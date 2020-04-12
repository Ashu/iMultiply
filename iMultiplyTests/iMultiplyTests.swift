//
//  iMultiplyTests.swift
//  iMultiplyTests
//
//  Created by Ashutosh Dave on 12/04/20.
//  Copyright © 2020 Ashutosh Dave. All rights reserved.
//

@testable import iMultiply
import XCTest

class iMultiplyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
		let game = iMultiply()
		game.start()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
