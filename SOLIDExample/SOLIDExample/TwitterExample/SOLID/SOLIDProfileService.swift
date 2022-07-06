//
//  SOLIDProfileService.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDProfileService: Service {
    
    private let freq: Int
    let userID: String
    
    init(frequency: Int, userID: String) {
        self.freq = frequency
        self.userID = userID
    }
    // MARK: - Protocol conformance
    
    // MARK: Service
    
    func frequency() -> Int {
        return freq
    }
    
    func execute() {
        self.fetchProfileForUserID(userID)
    }
    
    // MARK: - Private methods
    
    private func fetchProfileForUserID(userID: String) {
        print("[SOLID] fetched profile for user \(userID)")
    }
    
}