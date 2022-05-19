import XCTest
@testable import AnyAsyncSequence

final class AnyAsyncSequenceTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AnyAsyncSequence().text, "Hello, World!")
    }
}
