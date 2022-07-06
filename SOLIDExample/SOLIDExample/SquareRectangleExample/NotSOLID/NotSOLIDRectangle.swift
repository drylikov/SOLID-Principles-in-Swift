//
//  NotSOLIDRectangle.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/14/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

class NotSOLIDRectangle {
    
    internal var myHeight: Double = 0
    internal var myWidth: Double = 0
    
    func setHeight(value: Double) {
        myHeight = value
    }
    
    func setWidth(value: Double) {
        myWidth = value
    }
    
    func height() -> Double {
        return myHeight
    }
    
    func width() -> Double {
        return myWidth
    }
    
    func area() -> Double {
        return self.height() * self.width()
    }
    
}