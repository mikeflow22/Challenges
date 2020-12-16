//
//  main.swift
//  palindromeChallenge
//
//  Created by Michael Flowers on 12/16/20.
//

import Foundation

/*
 “Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.

 Sample input and output
 The string “rotator” should return true.
 The string “Rats live on no evil star” should return true.
 The string “Never odd or even” should return false; even though the letters are the same in reverse the spaces are in different places.
 The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.
 ”

 Excerpt From: Paul Hudson. “Swift Coding Challenges.” Apple Books.
 */

func flipItAndReverseIt(input: String) -> Bool {
    //On first thought, I do believe that there is a method on collections, specifically arrays, that reverses it.
    //I have to make both variables lowerecase
    
    //Take away from this lesson is to construct or initialize a string from the value of what's reversed.
    return input.lowercased() == String(input.reversed()).lowercased()
}

print(flipItAndReverseIt(input: "Rats live on no evil star"))
print(flipItAndReverseIt(input: "Hello World"))
