//
//  Order.swift
//  WheelsWithinWheels
//
//  Created by Kaleb Shane on 1/23/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

class Order {
    private static var ids: [String] = []
    
    let under: Account
    let created: Date
    let due: Date
    let price: Double
    let id: String
    
    var completed: Date?
    var pickedUp: Date?
    
    init(under: Account, due: Date, price: Double) {
        self.under = under
        created = Date(timeIntervalSinceNow: 0)
        self.due = due
        self.price = price
        
        //Generate unique ID
        var id = ""
        repeat {
            id = String(arc4random_uniform(1000))
        } while Order.ids.contains(id)
        self.id = id
        Order.ids.append(id)
        
        completed = nil
        pickedUp = nil
    }
    
    func complete() {
        if completed != nil {
            completed = Date(timeIntervalSinceNow: 0)
        }
    }
    func pickUp() {
        if pickedUp != nil {
            pickedUp = Date(timeIntervalSinceNow: 0)
        }
    }
}
