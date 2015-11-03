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
        let table:IntTable = IntTable(topRow: [5], leftColumn: [10])
        XCTAssert(table.getAtPosition(1,row:1) == 50)
        
    }
    func testTableOverruns()
    {
        let table:IntTable = IntTable(topRow: [5], leftColumn: [10])
        // Check for overruns
        XCTAssert(table.getAtPosition(2,row:2) == nil)
        XCTAssert(table.getAtPosition(1,row: 2) == nil)
        XCTAssert(table.getAtPosition(2,row: 1) == nil)
    }
    func testEmptyTable()
    {
        let table:IntTable = IntTable(topRow: [], leftColumn: [])
        XCTAssert(table.getAtPosition(1,row:1) == nil)
    }
    func testPreCalculatedTable()
    {
        let table:IntTable = IntTable(topRow: [1,2,3,4,5], leftColumn: [5,4,3,2,1])
        
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
}
