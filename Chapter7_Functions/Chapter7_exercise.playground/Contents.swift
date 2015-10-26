//: Playground - noun: a place where people can play

import UIKit

func printFullName(firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}

printFullName("Perry", "Chen")

var myOwnName: String?

var myOwnNames: (String, Int)

func calculateFullName(firstName: String, _ lastName: String) -> (String, Int) {
    let strName = firstName + " " + lastName
    return (strName, strName.characters.count)
}

myOwnNames = calculateFullName("Perry", "Chen")

myOwnNames.1

