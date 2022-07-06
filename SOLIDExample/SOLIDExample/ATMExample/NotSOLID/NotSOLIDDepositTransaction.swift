//
//  NotSOLIDDepositTransaction.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct NotSOLIDDepositTransaction: Transaction {
    
    let ui: NotSOLIDATM

    // MARK: - Protocol conformance
    
    // MARK: Transaction
    
    func execute() {
        ui.requestDepositAmount()
        ui.requestWithdrawalAmount() // OOPS! DepositTransaction should NOT be able to do this
    }
    
}