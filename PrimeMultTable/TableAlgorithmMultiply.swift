//
//  TableAlgorithmMultiply.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation

class TableAlgorithmMultiply : TableAlgorithmInterface
{
    func tableOperation(columnHeaderValue:Int, rowHeaderValue:Int) -> Int
    {
        return columnHeaderValue * rowHeaderValue
    }
}