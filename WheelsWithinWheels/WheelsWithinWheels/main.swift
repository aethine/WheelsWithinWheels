//
//  main.swift
//  WheelsWithinWheels
//
//  Created by Kaleb Shane on 1/22/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

print("Hello, World!")

//print("Welcome!")
//
//repeat {
//    print("")
//} while runMainLoop()

let a = Account(name: "Alex Smith", info: "(123)-456-7890")
print(a)

let newOrder = Order(under: a, due: daysFromNow(7.5), price: 100)
print(newOrder)

a.addOrder(newOrder)

print(a)
