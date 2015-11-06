//: Playground - noun: a place where people can play

import UIKit

enum Month {
    case January, February, March, April, May, June, July, August,
    September, October, November, December
    
    var schoolSemester: String {
        switch self {
        case .August, .September, .October, .November, .December:
            return "Autumn"
        case .January, .February, .March, .April, .May:
            return "Spring"
        default:
            return "Not in the school year"
        }
    }
    
}

var now: Month = .November
now.schoolSemester


class IceCream {
    var name = "Plain"
    lazy var ingredients: [String] = {
        return ["sugar", "milk"]
    }()
    
    init () {
    }
}

let iceCream = IceCream()
// ingredients not yet initialized
iceCream.ingredients.append("strawberries")
// ingredients initialized before appending
iceCream.name = "Strawberry"