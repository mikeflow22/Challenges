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


func expandedForm1(input: Int) -> String {
    var output: String = ""
    var ones: Int
    var tens: Int
    var hundreds: Int
    var thousands: Int
    var tenThousands: Int
    switch String(input).count {
    case 1:
        output = "\(input / 1)"
    case 2:
        output = "\((input / 10) * 10) + \(input % 10)"
    case 3:
        hundreds = ((input / 100) * 100)
        tens = (input - hundreds) / (10) * 10
        ones = (input - hundreds - tens) / 1
        output = "\(hundreds) + \(tens) + \(ones)"
    case 4:
        thousands = ((input / 1000) * 1000)
        hundreds = ((input - thousands) / 100) * 100
        tens = (input - thousands - hundreds) / (10) * 10
        ones = (input - thousands - hundreds - tens) / 1
        output = "\(thousands) + \(hundreds) + \(tens) + \(ones)"
    case 5:
        tenThousands = ((input / 10000) * 10000)
        print("\(input % 10000)")
        thousands = ((input - tenThousands) / 1000) * 1000
        hundreds = ((input - tenThousands - thousands) / 100) * 100
        tens = (input - tenThousands - thousands - hundreds) / (10) * 10
        ones = (input - tenThousands - thousands - hundreds - tens) / 1
        output = "\(tenThousands) + \(thousands) + \(hundreds) + \(tens) + \(ones)"
    default:
        output = "something wrong happend"
    }
    return output
    
}

print(expandedForm1(input: 97426))
