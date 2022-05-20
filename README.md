# AnyAsyncSequence

[![MIT License](https://img.shields.io/github/license/vsanthanam/AnyAsyncSequence)](https://github.com/vsanthanam/AnyAsyncSequence/blob/main/LICENSE)
[![Swift 5.6](https://img.shields.io/badge/Swift-5.6-critical)](https://www.swift.org)
[![iOS | macOS | tvOS | watchOS](https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-inactive)](https://developer.apple.com)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/vsanthanam/anyasyncsequence)](https://github.com/vsanthanam/AnyAsyncSequence/releases)

AnyAsyncSequence allows you to expose `AsyncSequence` interfaces in your APIs without exposing the underlying sequence type, while continuing to expose the sequence's `Element` type to consumers, so they can asynchronously iterate over the sequence.

I assume that when Swift adds type constraints to opaque types ([as has been hinted](https://forums.swift.org/t/anyasyncsequence/50828/2)), this package may become unnecessary.

```swift
import AnyAsyncSequence

var mySequence: AnyAsyncSequence<Element> {
    myTypedSequence.eraseToAnyAsyncSequence()
}
```

Explore [the documentation](https://vsanthanam.github.io/AnyAsyncSequence/docs/documentation/anyasyncsequence) for more details.

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

#### Other

If you find this package useful, checkout some of my [others](https://reachability.tools)
