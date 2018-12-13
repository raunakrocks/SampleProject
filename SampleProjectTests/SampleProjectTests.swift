import XCTest
@testable import SampleProject

class SampleProjectTests: XCTestCase {
    func testExample() {
        assertObjectWillDealloc  {
            let viewModel = ViewModel()
            let view = View(viewModel: viewModel)
            return view
        }
    }
}


extension XCTestCase {
    public func assertObjectWillDealloc(_ file: StaticString = #file, line: UInt = #line, createObject: () -> AnyObject) {
        weak var weakReference: AnyObject?
        
        autoreleasepool {
            let strongReference = createObject()
            weakReference = strongReference
        }
        
        XCTAssertNil(weakReference, "weak reference not cleaned up, there may be a retain cycle", file: file, line: line)
    }
}

