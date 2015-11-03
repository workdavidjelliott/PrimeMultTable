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
    // TODO : Update this so these arrays can dynamically change.
    // No test coverage yet.
    private var topRow:[Int]
    private var leftColumn:[Int]
    
    init(topRow:[Int], leftColumn:[Int])
    {
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
        if row >= width
        {
            return nil
        }
        if column >= height
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
        return topRow[column-1] * leftColumn[row-1]
    }
    
    var width: Int {
        return topRow.count + 1
    }
    var height: Int {
        return leftColumn.count + 1
    }
}