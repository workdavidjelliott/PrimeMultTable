//
//  Prime.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation


class PrimeSequence
{
    func getArrayOfPrimes(count:Int) -> [Int]
    {
        var array:[Int] = []
        var candidate:Int = 2
        var foundPrimes:Int = 0
        
        while foundPrimes<count
        {
            if candidate.isPrime()
            {
                array.append(candidate)
                foundPrimes++
            }
            candidate++
        }
        return array
    }
}

extension Int
{
    func isPrime() -> Bool
    {
        // No primes under 2
        if self < 2
        {
            return false
        }
        // 2 and 3 are the only even, and divisible by 3 numbers.
        // So just return those.
        if self < 4
        {
            return true
        }
        // No even numbers.
        if (self % 2) == 0
        {
            return false
        }
        if (self < 9)
        {
            return true
        }
        // No multiples of 3
        if (self % 3) == 0
        {
            return false
        }
        
        // We only need to check upto the square root of the candidate.
        let checkUpTo:Int = Int(sqrt(Double(self)))
        

        var i = 5
        while (i <= checkUpTo)
        {
            if ((self % i) == 0)
            {
                return false;
            }
            if ((self % (i + 2)) == 0)
            {
                return false;
            }
            i = i + 6;
        }
        return true
    }
}