//
//  main.swift
//  SameCharacters
//
//  Created by Michael Flowers on 1/11/21.
//

import Foundation
/*
 “Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.

 Sample input and output
 The strings “abca” and “abca” should return true.
 The strings “abc” and “cba” should return true.
 The strings “ a1 b2 ” and “ b1 a2 ” should return true.
 The strings “abc” and “abca” should return false.
 The strings “abc” and “Abc” should return false.
 The strings “abc” and “cbAa” should return false.
 The strings “abcc” and “abca” should return false.
 ”

 Excerpt From: Paul Hudson. “Swift Coding Challenges.” Apple Books.
 */

func sameCharacters(input1: String, input2: String) -> Bool {
    //first I want to check to see if the strings match in length
    guard input1.count == input2.count else {
        return false
    }
    
    //Next I want to check to see if each string contains the same characters, I can do this with my own algorithm.
    
    let set1 = Set(input1)
    print(set1)
    let set2 = Set(input2)
    print(set2)
    return set1.intersection(set2).count == 0
}

print(sameCharacters(input1: "abca", input2: "abca"))
print(sameCharacters(input1: "abc", input2: "abca"))
