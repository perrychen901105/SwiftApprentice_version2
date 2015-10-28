//: Playground - noun: a place where people can play

import UIKit
import Foundation

let array1 = [Int]()
let array2 = []
let array3: [String] = []

let array4 = [1, 2, 3]
print(array4[0])
//print(array4[5])
array4[1...2]
//array4[0] = 4
//array4.append(4)

var array5 = [1, 2, 3]
array5[0] = array5[1]
array5[0...1] = [4, 5]
//array5[0] = "Six"
//array5 += 6
for item in array5 { print(item) }

func removeOnce(itemToRemove: Int, fromArray: [Int]) -> [Int] {
    var array = fromArray
    if let indexDel = array.indexOf(itemToRemove) {
        array.removeAtIndex(indexDel)
    }
    return array
}

let arr1 = removeOnce(1, fromArray: [1,2,1,4,5])

func remove(itemToRemove: Int, fromArray: [Int]) -> [Int] {
    let array = fromArray.filter {
        $0 != itemToRemove
    }
    return array
}
let arr2 = remove(1, fromArray: [1,2,1,4,5])

func reverse(array: [Int]) -> [Int] {
    var arrReversed: [Int] = []
    var i: Int = array.count - 1
    for (i ; i >= 0 ; i--) {
        arrReversed.append(array[i])
    }
    return arrReversed
}

let arrR = reverse([1,2,3,4,5])

func randomFromZeroTo(number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomArray(array: [Int]) -> [Int] {
    var newArray = array
    for index in 0..<array.count {
        let randomIndex = randomFromZeroTo(array.count)
        let value = newArray[randomIndex]
        newArray[randomIndex] = newArray[index]
        newArray[index] = value
    }
    return newArray
}

