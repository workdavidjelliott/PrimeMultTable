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
    
    

}