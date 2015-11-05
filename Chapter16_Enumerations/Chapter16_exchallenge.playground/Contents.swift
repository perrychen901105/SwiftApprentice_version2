//: Playground - noun: a place where people can play

import UIKit

enum Coin: Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

let coinPurse: [Coin] = [.Dime, .Quarter, .Penny, .Penny, .Nickel, .Nickel]

func sumTheCoins(coins: [Coin]) -> Int {
    var sum: Int = 0
    for co in coins {
        sum += co.rawValue
    }
    return sum
}

sumTheCoins(coinPurse)

enum Month: Int {
    case January = 1, February, March, April, May, June, July,
    August, September, October, November, December
}

func monthsUntilSummer(month: Month) -> Int {
    return Month.December.rawValue - month.rawValue
}

monthsUntilSummer(Month.June)

enum Direction {
    case North
    case South
    case East
    case West
}
var movements: [Direction] = [.North]
