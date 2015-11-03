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
        if row == 0 && column == 0
        {
            return nil
        }
        if row == 0
        {
            return topRow[column-1]
        }
        if column == 0
        {
            return leftColumn[row-1]
        }
        return topRow[column-1] * leftColumn[row-1]
    }
    

}