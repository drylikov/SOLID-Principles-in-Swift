//
//  SOLIDRectangle.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDRectangle: SOLIDShape {
    
    let width: Double
    let height: Double
    
    // MARK: - Protocol conformance
    
    // MARK: SOLIDShape
    
    func area() -> Double {
        return width * height
    }
    
}