//
//  NotSOLIDConsoleATM.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct NotSOLIDConsoleATM: NotSOLIDATM {
    
    // MARK: - Protocol conformance
    
    // MARK: ATM
    
    func requestDepositAmount() {
        print("[Not SOLID] Requested deposit")
    }
    
    func requestWithdrawalAmount() {
        print("[Not SOLID] Requested withdrawal")
    }
    
    func requestTransfer() {
        print("[Not SOLID] Requested Transfer")
    }
    
    func informInsufficientFunds() {
        print("[Not SOLID] Insufficient funds!")
    }
}