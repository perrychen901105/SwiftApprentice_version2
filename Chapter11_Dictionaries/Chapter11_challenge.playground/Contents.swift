//: Playground - noun: a place where people can play

import UIKit

func replaceValueForKey(key1: String, withValueForKey key2: String, inDictionary: [String: Int]) -> [String: Int] {
    var dicVariable = inDictionary
    let valueA = inDictionary[key1]
    let valueTemp = valueA
    dicVariable.updateValue(inDictionary[key2]!, forKey: key1)
    dicVariable.updateValue(valueTemp!, forKey: key2)
    return dicVariable
}

let dicOri = ["a": 1,"b": 2,"c": 3,"d": 4]

let dicModified = replaceValueForKey("b", withValueForKey: "a", inDictionary: dicOri)

var dicCities = ["NY": "NEW YORK", "CA": "CALIFORNIA", "aCA": "CALIFORNIAbbb"]

func getAllLongerName(dicRoot: [String: String]) -> [String] {
    for (_, value) in dicRoot {
        if value.characters.count > 8 {
            print("\(value) ", terminator: "")
        }
    }
    
    var arrNames = [String]()
    let dicFilter = dicRoot.filter {
        $0.1.characters.count > 8
    }
    for item in dicFilter {
        arrNames.append(item.1)
    }
    return arrNames
}

getAllLongerName(dicCities)

func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var dicCombined = [String: String]()
    dicCombined = dict1
    for (key, value) in dict2 {
        if dicCombined[key] == nil {
            dicCombined[key] = value
        } else {
            dicCombined.updateValue(value, forKey: key)
        }
    }
    return dicCombined
}

let dicA = ["a": "testa", "b": "testb", "c": "testc", "d": "testd"]
let dicB = ["a": "newa", "e": "teste", "f": "testf"]

print(combine(dicA, with: dicB))

