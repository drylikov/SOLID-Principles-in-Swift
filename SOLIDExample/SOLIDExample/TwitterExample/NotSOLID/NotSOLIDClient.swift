//
//  NotSOLIDClient.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct NotSOLIDClient: Client {
    
    func startScheduler() {
        let serviceScheduler = NotSOLIDServiceScheduler(userID: "123")
        
        serviceScheduler.start()
    }
    
}