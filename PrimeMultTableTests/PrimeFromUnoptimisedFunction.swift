//
//  PrimeFromUnoptimisedFunction.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation
import XCTest

@testable import PrimeMultTable

class PrimeFromUnoptimisedFunction: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAgainstSimpleVersion()
    {
        // Do from -25000 to 25000
        for i in -25000...25000
        {
            XCTAssertEqual(isPrime(i),i.isPrime())
        }
    }
    
    
    // The old simple isPrime
    func isPrime(primeTest:Int) -> Bool?
    {
        // Fail
        if primeTest <= 1
        {
            return false
        }
        for i in 2..<primeTest
        {
            if (primeTest % i) == 0
            {
                return false
            }
        }
        return true
    }
}
