//
//  SOLIDServiceFactory.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDServiceFactory {
    
    static func twitterTimelineServiceWithUserID(userID: String) -> Service {
        return SOLIDTimelineService(frequency: 1, userID: userID)
    }
    
    static func twitterProfileServiceWithUserID(userID: String) -> Service {
        return SOLIDProfileService(frequency: 2, userID: userID)
    }
    
}