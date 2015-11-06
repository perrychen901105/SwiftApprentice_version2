//: Playground - noun: a place where people can play

import UIKit

class Circle {

    var area: Double {
        return M_PI * radius * radius
    }
    var radius: Double {
        set {
            
        }
        
        get {

        }
    }
    init (radius: Double) {
        self.radius = radius
    }
    
    func growByAFactor(factor: Double) {
        self.radius = self.radius * factor
    }
    
}


