//
//  PrimeMultTableTests.swift
//  PrimeMultTableTests
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import XCTest
@testable import PrimeMultTable

class PrimeMultTableTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPrimesUpto10()
    {
        XCTAssert(!0.isPrime())
        XCTAssert(!1.isPrime())
        XCTAssert(2.isPrime())
        XCTAssert(3.isPrime())
        XCTAssert(!4.isPrime())
        XCTAssert(5.isPrime())
        XCTAssert(!6.isPrime())
        XCTAssert(7.isPrime())
        XCTAssert(!8.isPrime())
        XCTAssert(!9.isPrime())
    }
    
    func testPerformanceOf32BitMaximumNumber()
    {
        self.measureBlock {
            2147483647.isPrime()
        }
    }
    func DISABLED_testPerformanceOf64BitMaximumNumber()
    {
        self.measureBlock {
            // Used Wolfram to find the nearest prime to the 64-bit signed boundary
            // This is the largest signed 64-bit number.
            9223372036854775783.isPrime()
        }
    }
}
