//
//  IntTable.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation

class IntTable
{
    var algorithm:TableAlgorithmInterface
    
    // TODO : Update this so these arrays can dynamically change.
    // No test coverage yet.
    private var topRow:[Int]
    private var leftColumn:[Int]
    
    init(algorithm:TableAlgorithmInterface, topRow:[Int], leftColumn:[Int])
    {
        self.algorithm = algorithm
        self.topRow = topRow
        self.leftColumn = leftColumn
    }
    
    func getAtPosition(column:Int, row:Int) -> Int?
    {
        // Check for the top right table entry.
        if row == 0 && column == 0
        {
            return nil
        }
        // Check for overruns
        if row >= height
        {
            return nil
        }
        if column >= width
        {
            return nil
        }
        // Use the supplied data for the first row and column
        if row == 0
        {
            return topRow[column-1]
        }
        if column == 0
        {
            return leftColumn[row-1]
        }
        // Calculate on all other cells.
        return algorithm.tableOperation(topRow[column-1], rowHeaderValue: leftColumn[row-1])
    }
    
    var width: Int {
        return topRow.count + 1
    }
    var height: Int {
        return leftColumn.count + 1
    }
}