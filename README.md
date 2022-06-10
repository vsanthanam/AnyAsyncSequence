# AnyAsyncSequence

<a href="https://github.com/vsanthanam/AnyAsyncSequence/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/vsanthanam/AnyAsyncSequence" />
</a>
<a href="https://github.com/vsanthanam/AnyAsyncSequence/releases">
    <img src="https://img.shields.io/github/v/release/vsanthanam/AnyAsyncSequence" />
</a>
<a href="https://github.com/vsanthanam/AnyAsyncSequence/actions/workflows/spm-build-test">
    <img src="https://img.shields.io/github/workflow/status/vsanthanam/AnyAsyncSequence/spm-build-test" />
</a>
<a href="https://swift.org">
    <img src="https://img.shields.io/badge/swift-5.6-critical" />
</a>
<a href="https://developer.apple.com">
    <img src="https://img.shields.io/badge/platform-iOS%2011%20%7C%20macOS%2010.13%20%7C%20tvOS%2011%20%7C%20watchOS%204-lightgrey" />
</a>

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
