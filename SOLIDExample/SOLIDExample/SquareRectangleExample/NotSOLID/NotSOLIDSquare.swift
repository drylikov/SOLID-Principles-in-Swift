//
//  NotSOLIDSquare.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

class NotSOLIDSquare: NotSOLIDRectangle {
    
    override func setHeight(value: Double) {
        myHeight = value
        myWidth = value
    }
    
    override func setWidth(value: Double) {
        myWidth = value
        myHeight = value
    }
    
}