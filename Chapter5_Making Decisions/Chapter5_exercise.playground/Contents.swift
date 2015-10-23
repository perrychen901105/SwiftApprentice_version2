//: Playground - noun: a place where people can play

import UIKit

let myAge = 25

if myAge > 13 && myAge < 19 {
    print("Teenager")
} else {
    print("Not a teenager")
}

var strLife = ""
switch (myAge) {
case let x where 0 <= x && x <= 2:
    strLife = "Infant"
case let x where 3 <= x && x <= 12:
    strLife = "Child"
case let x where 13 <= x && x <= 19:
    strLife = "Teenager"
case let x where 20 <= x && x <= 39:
    strLife = "Adult"
case let x where 40 <= x && x <= 60:
    strLife = "Middle aged"
case let x where x >= 61:
    strLife = "Elderly"
default:
    break
}



let myInfo = (name: "Perry", age: 25)

switch (myInfo) {
case (_, let x) where 0 <= x && x <= 2:
    strLife = "\(myInfo.name) is Infant"
case (_, let x) where 3 <= x && x <= 12:
    strLife = "\(myInfo.name) is Child"
case (_, let x) where 13 <= x && x <= 19:
    strLife = "\(myInfo.name) is Teenager"
case (_, let x) where 20 <= x && x <= 39:
    strLife = "\(myInfo.name) is Adult"
case (_, let x) where 40 <= x && x <= 60:
    strLife = "\(myInfo.name) is Middle aged"
case (_, let x) where x >= 61:
    strLife = "\(myInfo.name) is Elderly"
default:
    break
}
print(strLife)
