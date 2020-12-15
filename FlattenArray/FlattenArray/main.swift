//
//  main.swift
//  FlattenArray
//
//  Created by Michael Flowers on 12/15/20.
//

import Foundation

print("Hello, World!")

/*
 Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

 Example:

 Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].
 */

func twoDemensional(array: [[Int]]) -> [Int] {
    //On first thought I'm thinking that there is a collection's method that will flatten the two dimensional array
    //and then we can sort the single array
    
   
    return array.flatMap({$0}).sorted()
}

print(twoDemensional(array: [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]]))
