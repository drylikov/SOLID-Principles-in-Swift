//
//  SOLIDSquare.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDSquare: SOLIDShape {
    
    let side: Double
    
    // MARK: - Protocol conformance
    
    // MARK: SOLIDShape
 
    func area() -> Double {
        return side * 2
    }
}