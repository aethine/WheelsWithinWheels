//
//  Account.swift
//  WheelsWithinWheels
//
//  Created by Kaleb Shane on 1/23/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

class Account {
    let name: String
    var info: String
    var orderList: [Order]
    var balance: Double
    
    init(name: String, info: String) {
        self.name = name
        self.info = info
        orderList = []
        balance = 0.0
    }
    
    func addOrder(_ o: Order) {
        orderList.append(o)
    }
    func addBalance(amt: Double) {
        balance += amt
    }
}
