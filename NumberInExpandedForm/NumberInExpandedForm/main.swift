//
//  main.swift
//  NumberInExpandedForm
//
//  Created by Michael Flowers on 12/17/20.
//

import Foundation

/*
 CREDIT TO "CODEWARS"
 Write Number in Expanded Form
 
 You will be given a number and you will need to return it as a string in Expanded Form. For example:
 
 expandedForm 12    -- Should return '10 + 2'
 expandedForm 42    -- Should return '40 + 2'
 expandedForm 70304 -- Should return '70000 + 300 + 4'
 NOTE: All numbers will be whole numbers greater than 0.
 
 */



func expandedForm(input: Int) -> String {
    //ones
    //tens
    //hundreds
    //thousands
    var thousands: Int = 0
    var output: String = ""
    
    //this approach will turn the input into a string, so that we can get the "digits" this will give us information on how big the number is and from there we can disect the input
    
    let digits = String(input)
    
    switch digits.count {
    case 5:
        thousands = input / 10000
        output += "\(thousands)"
    default:
        print("something happened")
    
    }
    
    
    return output
    
}
print(expandedForm(input: 70000))
