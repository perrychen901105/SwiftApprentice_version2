//: Playground - noun: a place where people can play

import UIKit

protocol Item {
    var name: String { get }
    var clearance: Bool { get }
    var msrp : Float { get }
    func totalPrice() -> Float
}

protocol Taxable: Item { }

protocol clearanceItem: Item {
    var adjustDiscount: Float { get }
}

extension Item where Self: Taxable, Self: clearanceItem {
    func totalPrice() -> Float {
        return adjustDiscount + (adjustDiscount * 0.075)
    }
}

extension Item {
    func totalPrice() -> Float {
        return msrp
    }
}

extension Item {
    func description() -> String {
        return name
    }
}

struct Cloth:clearanceItem {
    var name: String
    var clearance: Bool
    var msrp: Float
    
    var adjustDiscount: Float{
        return msrp * (clearance ? 0.75 : 1.0)
    }
    
}

struct Food: Taxable, clearanceItem {
    var name: String
    var clearance: Bool
    var msrp: Float
    
    var adjustDiscount: Float{
        return msrp * (clearance ? 0.50 : 1.0)
    }
}

struct Electrionic: Taxable {
    var name: String
    var clearance: Bool
    var msrp: Float
    
    var adjustDiscount: Float {
        return msrp * (clearance ? 0.90 : 1.0)
    }
}

