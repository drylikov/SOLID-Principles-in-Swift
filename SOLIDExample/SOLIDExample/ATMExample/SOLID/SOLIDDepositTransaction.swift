//
//  SOLIDDepositTransaction.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDDepositTransaction: Transaction {
    
    let ui: DepositUI
    
    func execute() {
        ui.requestDepositAmount()
    }
    
}