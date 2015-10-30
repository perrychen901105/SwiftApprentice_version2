//: Playground - noun: a place where people can play

import UIKit

struct Tshirt {
    var size: Int
    var color: String
    var material: String
    
    init(size: Int, color: String, material: String) {
        self.size = size
        self.color = color
        self.material = material
    }
    
    func getValue() -> Double {
        return Double(1 * self.size + 20)
    }
}

var shirt: Tshirt = Tshirt(size: 2, color: "red", material: "wool")
shirt.getValue()