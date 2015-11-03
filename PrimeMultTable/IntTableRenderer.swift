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
        
        str = "|     "
        if includeTerminator
        {
            str += "|\n"
        }
        return str
    }
    
    func getTableAsString() -> String
    {
        var result: String = String()
        
        result += createValueInGridString(
            table.getAtPosition(0,row: 0),
            includeTerminator: true)
        
        return result
    }
}
