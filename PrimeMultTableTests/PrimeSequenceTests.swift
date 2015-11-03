//
//  PrimeSequenceTests.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation
import XCTest
@testable import PrimeMultTable

class PrimeSequenceTests: XCTestCase {
    
    func testFirst10Primes()
    {
        
        XCTAssert(PrimeSequence().getArrayOfPrimes(10) == [2,3,5,7,11,13,17,19,23,29])
        XCTAssert(PrimeSequence().getArrayOfPrimes(9) == [2,3,5,7,11,13,17,19,23])
        XCTAssert(PrimeSequence().getArrayOfPrimes(8) == [2,3,5,7,11,13,17,19])
        XCTAssert(PrimeSequence().getArrayOfPrimes(7) == [2,3,5,7,11,13,17])
        XCTAssert(PrimeSequence().getArrayOfPrimes(6) == [2,3,5,7,11,13])
        XCTAssert(PrimeSequence().getArrayOfPrimes(5) == [2,3,5,7,11])
        XCTAssert(PrimeSequence().getArrayOfPrimes(4) == [2,3,5,7])
        XCTAssert(PrimeSequence().getArrayOfPrimes(3) == [2,3,5])
        XCTAssert(PrimeSequence().getArrayOfPrimes(2) == [2,3])
        XCTAssert(PrimeSequence().getArrayOfPrimes(1) == [2])
        XCTAssert(PrimeSequence().getArrayOfPrimes(0) == [])
    }

    
}