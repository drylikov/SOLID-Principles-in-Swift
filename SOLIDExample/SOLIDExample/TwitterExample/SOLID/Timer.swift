//
//  Timer.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

protocol Timer {
    
    func onTick(action: Int -> ())
    func start()
    func stop()
    
}