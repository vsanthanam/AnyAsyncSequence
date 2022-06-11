# AnyAsyncSequence

[![MIT License](https://img.shields.io/github/license/vsanthanam/AnyAsyncSequence)](https://github.com/vsanthanam/AnyAsyncSequence/blob/main/LICENSE)
[![Package Releases](https://img.shields.io/github/v/release/vsanthanam/AnyAsyncSequence)](https://github.com/vsanthanam/AnyAsyncSequence/releases)
[![Build Results](https://img.shields.io/github/workflow/status/vsanthanam/AnyAsyncSequence/spm-build-test)](https://img.shields.io/github/workflow/status/vsanthanam/AnyAsyncSequence/spm-build-test)
[![Swift Version](https://img.shields.io/badge/swift-5.6-critical)](https://swift.org)
[![Supported Platforms](https://img.shields.io/badge/platform-iOS%2013%20%7C%20macOS%2010.15%20%7C%20tvOS%2013%20%7C%20watchOS%206-lightgrey)](https://developer.apple.com)

AnyAsyncSequence allows you to expose `AsyncSequence` interfaces in your APIs without exposing the underlying sequence type, while continuing to expose the sequence's `Element` type to consumers, so they can asynchronously iterate over the sequence.

I assume that when Swift adds type constraints to opaque types ([as has been hinted](https://forums.swift.org/t/anyasyncsequence/50828/2)), this package may become unnecessary.

## Installation

AnyAsyncSequence currently distributed exclusively through the [Swift Package Manager](https://www.swift.org/package-manager/). 

To add AnyAsyncSequence as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/AnyAsyncSequence.git", .upToNextMajor(from: "1.0.0"))
]
```

To add AnyAsyncSequence as a dependency to an Xcode Project: 

- Choose `File` → `Add Packages...`
- Enter package URL `https://github.com/vsanthanam/AnyAsyncSequence.git` and select your release and of choice.

Other distribution mechanisms like CocoaPods or Carthage may be added in the future.

Additional installation instructions are available on the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/AnyAsyncSequence)

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FAnyAsyncSequence%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/vsanthanam/AnyAsyncSequence)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FAnyAsyncSequence%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/vsanthanam/AnyAsyncSequence)

## Usage

```swift
import AnyAsyncSequence

var mySequence: AnyAsyncSequence<Element> {
    myTypedSequence.eraseToAnyAsyncSequence()
}
```

Explore [the documentation](https://anyasyncsequence.tools/docs/documentation/anyasyncsequence) for more details.

## License

**AnyAsyncSequence** is available under the MIT license. See the LICENSE file for more information.
