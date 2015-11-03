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
    
    

    

    
}
