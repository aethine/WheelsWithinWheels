//
//  Home.swift
//  WheelsWithinWheels
//
//  Created by Kaleb Shane on 1/23/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

func runHomeView() -> Bool {
    print(">", terminator: "")
    /*
     .trimmingCharacters trims certain characters from each side of a string.
     the character set used here is all whitespace, so "   abc   " --> "abc".
     
     the .lowercased turns everything lowercased for easy comparison, so "abc" == "Abc" == "ABC"
     */
    let input = getLine()
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .lowercased()
    
    if let accounts = searchAccounts(forName: input) {
        currentView = .Account
    }
    else if input == "receivable" {
        currentView = .AccountsReceivable
    }
    else if input == "active" {
        currentView = .ActiveOrders
    }
    else if input == "help" {
        print("help message here")
    }
    else if input == "quit" {
        return false
    }
    else {
        print("Unknown command!")
    }
    return true
}
