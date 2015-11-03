//
//  Prime.swift
//  PrimeMultTable
//
//  Created by Dave Elliott on 03/11/2015.
//  Copyright © 2015 David Elliott. All rights reserved.
//

import Foundation

extension Int
{
    func isPrime() -> Bool
    {
        // No primes under 2
        if self < 2
        {
            return false
        }

        // For all numbers up to the prime candidate
        for i in 2..<self
        {
            // Check if the prime candidate is divisible.
            if (self % i) == 0
            {
                return false
            }
        }
        return true
    }
}