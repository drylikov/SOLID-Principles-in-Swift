//
//  NotSOLIDATM.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

protocol NotSOLIDATM {
    
    func requestDepositAmount()
    func requestWithdrawalAmount()
    func requestTransfer()
    func informInsufficientFunds()
    
}