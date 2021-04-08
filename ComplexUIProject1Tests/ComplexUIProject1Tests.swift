//
//  ComplexUIProject1Tests.swift
//  ComplexUIProject1Tests
//
//  Created by Jyoti Kumari 2 on 3/25/21.
//

import FBSnapshotTestCase
@testable import ComplexUIProject1

class ComplexUIProject1Tests: FBSnapshotTestCase {
    override func setUp() {
        super.setUp()
        self.recordMode = false
        fileNameOptions = [
            FBSnapshotTestCaseFileNameIncludeOption.OS,
            FBSnapshotTestCaseFileNameIncludeOption.screenScale,
            FBSnapshotTestCaseFileNameIncludeOption.screenSize,
            FBSnapshotTestCaseFileNameIncludeOption.device
        ]
         //Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testExample() {
        let viewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        FBSnapshotVerifyView(viewController.view, identifier: "simpleView", perPixelTolerance: 0.5, overallTolerance: 0.5)
        snapshot("0Launch")
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
