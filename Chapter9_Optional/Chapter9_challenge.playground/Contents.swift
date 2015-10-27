//: Playground - noun: a place where people can play

import UIKit

func divideIfWhole(value: Int, by divisor: Int) -> Int?
{
    var num: Int?
    if value % divisor == 0 {
        num = value / divisor
    } else {
        num = nil
    }
    return num
}

let returnNum = divideIfWhole(10, by: 3) ?? 0

if let numOfDivide:Int = returnNum {
    print("Yep, it divides \(numOfDivide) times.")
} else {
    print("Not divisible :[.")
}
