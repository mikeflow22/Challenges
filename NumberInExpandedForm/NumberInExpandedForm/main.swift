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
    
    let ten: Int? = input / 10
    let remainder = input % 10
    print(remainder)
    print(ten)
    return "something"
    
}
print(expandedForm(input: 28))
