//
//  main.swift
//  ContainAnotherString
//
//  Created by Michael Flowers on 1/12/21.
//

import Foundation

/*
 “Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.

 Sample input and output
 The code "Hello, world".fuzzyContains("Hello") should return true.
 The code "Hello, world".fuzzyContains("WORLD") should return true.
 The code "Hello, world".fuzzyContains("Goodbye") should return false.”

 Excerpt From: Paul Hudson. “Swift Coding Challenges.” Apple Books.
 */

//step one create an extention on String
extension String {
    func fuzzyContains(input: String) -> Bool {
        //break the string up into arrays
        let string = self.compactMap({String($0)}).joined(separator: " ")
        print(string)
        let string2 = input.compactMap({String($0)})
        print(string2)
        let set1 = Set(arrayLiteral: string).intersection(string2)
        print(set1)
        return set1.count > 1
    }
}
print("hello, world".fuzzyContains(input: "nope"))
