//
//  IntTableRendererTests.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation
import XCTest
@testable import PrimeMultTable

class IntTableRendererTests: XCTestCase {
    
    func testEmptyTable()
    {
        let table:IntTable = IntTable(algorithm: TableAlgorithmMultiply(), topRow: [], leftColumn: [])
        let string = IntTableRenderer(table: table).getTableAsString()
        
        let result:String =
        "|     |\n"
        XCTAssert(string == result)
    }
    
    func testVerySmallTable()
    {
        let table:IntTable = IntTable(algorithm: TableAlgorithmMultiply(), topRow: [5], leftColumn: [10])
        let string = IntTableRenderer(table: table).getTableAsString()
        
        let result:String =
        "|     |   5 |\n" +
        "|  10 |  50 |\n"
        
        XCTAssert(string == result)
    }
    func testLargeTable()
    {
        let table:IntTable = IntTable(algorithm: TableAlgorithmMultiply(), topRow: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], leftColumn: [10,9,8,7,6,5,4,3,2,1])
        let string = IntTableRenderer(table: table).getTableAsString()
        
        print(string)
        
        XCTAssert(string.characters.count > 0)
    }
    

}