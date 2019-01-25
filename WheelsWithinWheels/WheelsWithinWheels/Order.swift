//
//  Orders.swift
//  WheelsWithinWheels
//
//  Created by Stephen Sheldon on 1/22/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

class Order: CustomStringConvertible{
    var customer: Customer
    var bike: Bike
    var dropDate: Date
    
    var pickedUp = false
    var paid = false
    
    var price: Double
    var balance: Double
    
    var orderNumber: Int = 0
    
    init(_ customer: Customer, _ bike: Bike, _ dropDate: Date){
        self.customer = customer
        self.bike = bike
        self.dropDate = dropDate
        
        if (bike.type == .silver){
            price = bike.silver
            balance = bike.silver * -1
        }
        else if (bike.type == .gold){
            price = bike.gold
            balance = bike.gold * -1
        }
        else{
            price = bike.platinum
            balance = bike.platinum * -1
        }
    }
    
    var pickUpDate: Date{
        if (bike.type == .silver){ return dropDate.add(days: 4)!}
        else if (bike.type == .gold){ return dropDate.add(days: 7)!}
        else if (bike.type == .platinum){ return dropDate.add(days: 10)!}
        return dropDate
    }
    
   
    
    var description: String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        var str = "┎"
        for _ in 0...(bike.type!.rawValue.count + bike.name.count + 13){ str += "─" }
        str += "┑\n│\(bike.type!.rawValue) tuneup, \(bike.name) bike│\n│"
        for _ in 0...(bike.type!.rawValue.count + bike.name.count + 13){ str += "-" }
        str += "│\n│Order Number: \(orderNumber)"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - String(orderNumber).count - 1){ str += " "}
        str += "│\n│Balance Due: $\(balance * -1)"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - String(balance).count){ str += " "}
        str += "│\n│Picked Up?: \(pickedUp)"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - (String(pickedUp).count) + 1){ str += " "}
        str += "│\n│Complete on: \(dateFormatter.string(from: pickUpDate))"
        for _ in 0...((bike.type!.rawValue.count + bike.name.count) - (dateFormatter.string(from: pickUpDate).count)){ str += " "}
        str += "│\n┖"
        for _ in 0...(bike.type!.rawValue.count + bike.name.count + 13){ str += "─" }
        str += "┙"
        return str
    }
    
}


