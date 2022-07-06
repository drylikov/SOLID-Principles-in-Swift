//
//  SOLIDSchedulerFactory.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDSchedulerFactory {
    
    static func twitterServiceSchedulerWithUserID(userID: String) -> ServiceScheduler {
        let timer = clockTimer()
        var twitterScheduler = SOLIDServiceScheduler(timer: timer)
        
        twitterScheduler.registerService(SOLIDServiceFactory.twitterTimelineServiceWithUserID(userID))
        twitterScheduler.registerService(SOLIDServiceFactory.twitterProfileServiceWithUserID(userID))
        
        return twitterScheduler
    }
    
    static func clockTimer() -> Timer {
        return SOLIDTimer()
    }
    
}