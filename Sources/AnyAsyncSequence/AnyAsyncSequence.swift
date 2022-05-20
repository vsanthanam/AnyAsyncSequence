// AnyAsyncSequence
// AnyAsyncSequence.swift
//
// MIT License
//
// Copyright (c) 2021 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

/// A type erased `AsyncSequence`
///
/// This type allows you to create APIs that return an `AsyncSequence` that allows consumers to iterate over the sequence, without exposing the sequence's underlyin type.
/// Typically, you wouldn't actually initialize this type yourself, but instead create one using the `.eraseToAnyAsyncSequence()` operator also provided with this package.
public struct AnyAsyncSequence<Element>: AsyncSequence {

    // MARK: - Initializers
    
    /// Create an `AnyAsyncSequence` from an `AsyncSequence` conforming type
    /// - Parameter sequence: The `AnySequence` type you wish to erase
    public init<T: AsyncSequence>(_ sequence: T) where T.Element == Element {
        makeAsyncIteratorClosure = { AnyAsyncIterator(sequence.makeAsyncIterator()) }
    }

    // MARK: - API

    public struct AnyAsyncIterator: AsyncIteratorProtocol {
        private let nextClosure: () async throws -> Element?

        public init<T: AsyncIteratorProtocol>(_ iterator: T) where T.Element == Element {
            var iterator = iterator
            nextClosure = { try await iterator.next() }
        }

        public func next() async throws -> Element? {
            try await nextClosure()
        }
    }

    // MARK: - AsyncSequence

    public typealias Element = Element

    public typealias AsyncIterator = AnyAsyncIterator

    public func makeAsyncIterator() -> AsyncIterator {
        AnyAsyncIterator(makeAsyncIteratorClosure())
    }

    private let makeAsyncIteratorClosure: () -> AsyncIterator

}
