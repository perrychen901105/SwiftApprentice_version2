//: Playground - noun: a place where people can play

import UIKit

enum RollingError: ErrorType {
    case Doubles
    case OutOfFunding
}

var hasFunding = true

func roll(firstDice: Int, secondDice: Int) throws {
    let error: RollingError
    
    if firstDice == secondDice && hasFunding {
        // 1
        error = .Doubles
        hasFunding = false
        throw error
    } else if firstDice == secondDice && !hasFunding {
        // 2
        hasFunding = true
        print("Huzzah! You raise another round of funding!")
    } else if !hasFunding {
        // 3
        error = .OutOfFunding
        throw error
    } else {
        // 4
        print("You moved \(firstDice + secondDice) speaces")
    }
}

func move(firstDice: Int, secondDice: Int) -> String {
    do {
        try roll(firstDice, secondDice: secondDice)
        return "Successful roll."
    } catch RollingError.Doubles {
        return "You rolled doubles and have lost your funding"
    } catch RollingError.OutOfFunding {
        return "You need to do another round of funding."
    } catch {
        return "Unknown error"
    }
}

move(1, secondDice: 2)
move(4, secondDice: 4)
move(1, secondDice: 6)