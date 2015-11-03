//
//  IntTableRenderer.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation

class IntTableRenderer
{
    var table:IntTable
    
    init(table:IntTable)
    {
        self.table = table
    }
    func createValueInGridString(value:Int?, includeTerminator:Bool = false) -> String
    {
        var str:String = String();
        
        if let value = value
        {
            str += String(format: "|% 4d ",value)
        } else {
            str += "|     "
        }
        if includeTerminator
        {
            str += "|\n"
        }
        return str
    }
    
    func getTableAsString() -> String
    {
        var result: String = String()
        
        for y in 0..<table.height
        {
            for x in 0..<table.width
            {
                result += createValueInGridString(
                    table.getAtPosition(x,row: y),
                    includeTerminator: (x == (table.width-1)) )
            }
        }
        return result
    }
}
