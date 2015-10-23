//: Playground - noun: a place where people can play

import UIKit

let myAge: Int = 25

var averageAge: Double = Double(myAge)

averageAge = (averageAge + 30) / 2


var temperature: (month: Int, day: Int, year: Int, averageTemperature: Double) = (10, 23, 2015, 23.5)

let (_, day, _, temp) = temperature

temperature.averageTemperature = 30.0

let tempB = (1, 2)

let c = tempB.0
