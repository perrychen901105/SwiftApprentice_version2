//: Playground - noun: a place where people can play

import UIKit

let emails: Set<String> = ["a@google.com", "b@google.com", "c@google.com", "d@google.com"]

func checkIfValueInSets(setOri: Set<String>, value: String) -> Bool {
    var valueExist = false
    
    let setValue: Set<String> = [value]
    
    if setOri.intersect(setValue).count == 0 {
        valueExist = false
    } else {
        valueExist = true
    }
    
    return valueExist
}

checkIfValueInSets(emails, value: "b@google.com")


let day1: Set = ["Anna", "Benny", "Charlie"]
let day2: Set = ["Anna", "Benny", "Danny"]
let day3: Set = ["Anna", "Danny", "Eric"]

func checkAllAttendName(day1: Set<String>, day2: Set<String>, day3: Set<String>) -> Set<String> {
    var allAttend = Set<String>()
    allAttend = day1.intersect(day2).intersect(day3)
    return allAttend
}

checkAllAttendName(day1, day2: day2, day3: day3)

func findOutNameExcept(day1: Set<String>, day2: Set<String>, day3: Set<String>) -> Set<String> {
    var nameExcept = Set<String>()
    nameExcept = (day1.exclusiveOr(day2)).union((day1.exclusiveOr(day3)))
    return nameExcept
}

findOutNameExcept(day1, day2: day2, day3: day3)
