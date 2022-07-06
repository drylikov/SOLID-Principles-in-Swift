//
//  NotSOLIDServiceScheduler.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

class NotSOLIDServiceScheduler: NSObject {
    
    let userID: String
    private var serviceTimer: NSTimer?
    private var timerTick: Int
    
    // MARK: - Public methods
    
    init(userID: String) {
        self.userID = userID
        self.serviceTimer = nil
        self.timerTick = 0
    }
    
    // Responsibility: starts timer
    func start() {
        serviceTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "timerDidFire:", userInfo: nil, repeats: true)
    }
    
    func stop() {
        serviceTimer?.invalidate()
        serviceTimer = nil
    }
    
    // MARK: - Private methods
    
    @objc private func timerDidFire(timer: NSTimer) {
        timerTick++
        runServicesWithTick(timerTick)
    }
    
    // Responsibility: decides frequencies
    private func runServicesWithTick(tick: Int) {
        if ((tick % 1) == 0) {
            runTimelineUpdateService()
        }
        
        if ((tick % 2) == 0) {
            runProfileUpdateService()
        }
    }
    
    // Responsibility: Executes specific services
    private func runTimelineUpdateService() {
        NotSOLIDTimelineService.fetchTimelineForUserID(userID)
    }
    
    private func runProfileUpdateService() {
        NotSOLIDProfileService.fetchProfileForUserID(userID)
    }
    
}
