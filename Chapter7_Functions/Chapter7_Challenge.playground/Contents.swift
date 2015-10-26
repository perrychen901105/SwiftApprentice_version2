//: Playground - noun: a place where people can play

import UIKit

func isNumberDivisible(number: Int, by byNumber: Int) -> Bool {
    let isDivisible: Bool
    if number % byNumber == 0 {
        isDivisible = true
    } else {
        isDivisible = false
    }
    return isDivisible
}

func isPrime(number: Int) -> Bool {
    if number < 0 { return false }
    for i in 1...number {
        if isNumberDivisible(number, by: 2) {
            return false
        } else {
            
        }
    }
    return true
}

isPrime(6)
isPrime(13)
isPrime(8893)


func fibonacci(number: Int) -> Int {
    if number < 0  { return 0 }
    if number == 1 || number == 2 { return 1 }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(10)
