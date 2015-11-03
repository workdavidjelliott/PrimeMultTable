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
        
        let result:String =
            "|     |   1 |   2 |   3 |   4 |   5 |   6 |   7 |   8 |   9 |  10 |  11 |  12 |  13 |  14 |  15 |  16 |  17 |  18 |  19 |  20 |\n" +
            "|  10 |  10 |  20 |  30 |  40 |  50 |  60 |  70 |  80 |  90 | 100 | 110 | 120 | 130 | 140 | 150 | 160 | 170 | 180 | 190 | 200 |\n" +
            "|   9 |   9 |  18 |  27 |  36 |  45 |  54 |  63 |  72 |  81 |  90 |  99 | 108 | 117 | 126 | 135 | 144 | 153 | 162 | 171 | 180 |\n" +
            "|   8 |   8 |  16 |  24 |  32 |  40 |  48 |  56 |  64 |  72 |  80 |  88 |  96 | 104 | 112 | 120 | 128 | 136 | 144 | 152 | 160 |\n" +
            "|   7 |   7 |  14 |  21 |  28 |  35 |  42 |  49 |  56 |  63 |  70 |  77 |  84 |  91 |  98 | 105 | 112 | 119 | 126 | 133 | 140 |\n" +
            "|   6 |   6 |  12 |  18 |  24 |  30 |  36 |  42 |  48 |  54 |  60 |  66 |  72 |  78 |  84 |  90 |  96 | 102 | 108 | 114 | 120 |\n" +
            "|   5 |   5 |  10 |  15 |  20 |  25 |  30 |  35 |  40 |  45 |  50 |  55 |  60 |  65 |  70 |  75 |  80 |  85 |  90 |  95 | 100 |\n" +
            "|   4 |   4 |   8 |  12 |  16 |  20 |  24 |  28 |  32 |  36 |  40 |  44 |  48 |  52 |  56 |  60 |  64 |  68 |  72 |  76 |  80 |\n" +
            "|   3 |   3 |   6 |   9 |  12 |  15 |  18 |  21 |  24 |  27 |  30 |  33 |  36 |  39 |  42 |  45 |  48 |  51 |  54 |  57 |  60 |\n" +
            "|   2 |   2 |   4 |   6 |   8 |  10 |  12 |  14 |  16 |  18 |  20 |  22 |  24 |  26 |  28 |  30 |  32 |  34 |  36 |  38 |  40 |\n" +
            "|   1 |   1 |   2 |   3 |   4 |   5 |   6 |   7 |   8 |   9 |  10 |  11 |  12 |  13 |  14 |  15 |  16 |  17 |  18 |  19 |  20 |\n"
        
        XCTAssert(string == result)
    }
    

}