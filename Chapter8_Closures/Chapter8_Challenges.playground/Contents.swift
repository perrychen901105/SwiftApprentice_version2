//: Playground - noun: a place where people can play

import UIKit

func repeatTask(times: Int, task: () -> Void)
{
    for _ in 0..<times {
        task()
    }
}

repeatTask(10) { () -> Void in
    print("Swift Apprentice is a great book!")
}

func fibonacci(number: Int) -> Int {
    if number < 0  { return 0 }
    if number == 1 || number == 2 { return 1 }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

func mathSum(times: Int, operation: (Int) -> Int) -> Int {
    var sum: Int = 0
    for i in 1...times {
        sum += operation(i)
    }
    return sum
}

mathSum(10) {
    $0 * $0
}

mathSum(10, operation: fibonacci)