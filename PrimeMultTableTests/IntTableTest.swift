//
//  IntTableTest.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation
import XCTest
@testable import PrimeMultTable

class IntTableTest: XCTestCase {

    func testTableMultiplies()
    {
        let table:IntTable = IntTable(algorithm: TableAlgorithmMultiply(),topRow: [5], leftColumn: [10])
        XCTAssert(table.getAtPosition(1,row:1) == 50)
        
    }
    func testTableOverruns()
    {
        let table:IntTable = IntTable(algorithm: TableAlgorithmMultiply(),topRow: [5], leftColumn: [10])
        // Check for overruns
        XCTAssert(table.getAtPosition(2,row:2) == nil)
        XCTAssert(table.getAtPosition(1,row: 2) == nil)
        XCTAssert(table.getAtPosition(2,row: 1) == nil)
    }
    func testEmptyTable()
    {
        let table:IntTable = IntTable(algorithm: TableAlgorithmMultiply(),topRow: [], leftColumn: [])
        XCTAssert(table.getAtPosition(1,row:1) == nil)
    }
    func testPreCalculatedTable()
    {
        let table:IntTable = IntTable(algorithm:TableAlgorithmMultiply(),topRow: [1,2,3,4,5], leftColumn: [5,4,3,2,1])
        
        var resultTest:[Int?] =
            [
                nil,1, 2, 3, 4, 5,
                 5, 5,10,15,20,25,
                 4, 4, 8,12,16,20,
                 3, 3, 6, 9,12,15,
                 2, 2, 4, 6, 8,10,
                 1, 1, 2, 3, 4, 5
            ]
        
        for y in 0..<5
        {
            for x in 0..<5
            {
                XCTAssert(resultTest[(y*6) + x] == table.getAtPosition(x,row:y))
            }
        }
        
    }
    func testPreCalculatedIrregularTable()
    {
        let table:IntTable = IntTable(algorithm:TableAlgorithmMultiply(),topRow: [1,2,3,4,5,6,7,8,9,10], leftColumn: [5,4,3,2,1])
        
        var resultTest:[Int?] =
        [
            nil,1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
             5, 5,10,15,20,25,30,35,40,45,50,
             4, 4, 8,12,16,20,24,28,32,36,40,
             3, 3, 6, 9,12,15,18,21,24,27,30,
             2, 2, 4, 6, 8,10,12,14,16,18,20,
             1, 1, 2, 3, 4, 5, 6, 7, 8,9,10
        ]
        
        for y in 0..<5
        {
            for x in 0..<5
            {
                XCTAssert(resultTest[(y*11) + x] == table.getAtPosition(x,row:y))
            }
        }
        
    }
}
