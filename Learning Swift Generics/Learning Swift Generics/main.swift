//
//  main.swift
//  Learning Swift Generics
//
//  Created by Dave Spina on 4/29/21.
//

import Foundation

// a very basic generic function
func count<T>(_ items: [T]) -> Int {
    return items.count
}

// T must conform to the numeric protocol
// this is a generic constraint
func sumNums<T: Numeric>(_ items: [T]) -> T {
    return items.reduce(0, +)
}


let items1 = [3,4,5,6,7]
print("The count is \(count(items1))")
print("The sum is \(sumNums(items1))")
