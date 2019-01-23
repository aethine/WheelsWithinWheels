//
//  MainView.swift
//  WheelsWithinWheels
//
//  Created by Kaleb Shane on 1/23/19.
//  Copyright © 2019 Our Group. All rights reserved.
//

import Foundation

enum ViewMode {
    case Home, //Entry point to all other modes
    Account, //View single account
    AccountsReceivable, //Accounts Receivable list
    ActiveOrders //Active orders that have not been picked up
}
var currentView: ViewMode = .Home

func runMainLoop() -> Bool {
    switch currentView {
    case .Home:
        return runHomeView()
    case .Account:
        return runAccountView()
    case .AccountsReceivable:
        return runAccountsReceivableView()
    case .ActiveOrders:
        return runActiveOrdersView()
    default: fatalError("THIS PATH SHOULD NEVER BE REACHED")
    }
}
