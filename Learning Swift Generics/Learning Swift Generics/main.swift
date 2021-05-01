//
//  main.swift
//  Learning Swift Generics
//
//  Created by Dave Spina on 4/29/21.
//

import Foundation

protocol NotificationMessage {
    var severity: Int { get }
    func generateNotification()
}

struct InfoMessage: NotificationMessage {
    let severity: Int
    
    func generateNotification() {
        if severity > 2 {
            print("The severity is high")
        } else {
            print("Situation normal")
        }
    }
}

struct WarningMessage: NotificationMessage {
    let severity: Int
    
    func generateNotification() {
        if severity > 2 {
            print("ALERT ALERT ALERT!")
        } else {
            print("Situation normal")
        }
    }
}

// a very basic generic function
func count<T>(_ items: [T]) -> Int {
    return items.count
}

// T must conform to the numeric protocol
// this is a generic constraint
func sumNums<T: Numeric>(_ items: [T]) -> T {
    return items.reduce(0, +)
}

func handleMessage<T: NotificationMessage>(_ message: T) {
    message.generateNotification()
}


let items1 = [3,4,5,6,7]
let items2 = [3.5, 2.3, 2.5, 23]
let infoMsg = InfoMessage(severity: 3)
let warningMsg = WarningMessage(severity: 3)

print("The count is \(count(items1))")
print("The sum is \(sumNums(items1))")
handleMessage(infoMsg)
handleMessage(warningMsg)
