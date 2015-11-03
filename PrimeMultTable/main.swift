//
//  main.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation
import Cocoa

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
}

print("Please Enter a table size\n")

var inputString = String(input().characters.dropLast())
let value = Int(inputString)

if let value = value
{
    if value > 0 && value <= 10
    {
        
        var arrayOfPrimes = PrimeSequence().getArrayOfPrimes(value)
        
        let table:IntTable = IntTable(
            algorithm: TableAlgorithmMultiply(),
            topRow: arrayOfPrimes,
            leftColumn: arrayOfPrimes)
        
        let string = IntTableRenderer(table: table).getTableAsString()
        
        print(string)
        
    } else {
        print("Out of Bounds")
    }
}
