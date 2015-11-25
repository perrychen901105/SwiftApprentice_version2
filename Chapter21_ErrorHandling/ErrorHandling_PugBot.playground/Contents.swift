//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Direction {
    case Left
    case Right
    case Forward
}

enum PugBotError: ErrorType {
    case DidNotTurnLeft(directionMoved: Direction)
    case DidNotTurnRight(directionMoved: Direction)
    case DidNotGoForward(directionMoved: Direction)
    case EndOfPath
}

class PugBot {
    let name: String
    let correctPath: [Direction]
    var currentStepInPath = 0
    
    init? (name: String, correctPath: [Direction]) {
        self.correctPath = correctPath
        self.name = name
        // 1
        guard (correctPath.count > 0) else {return nil}
        
        // 2
        switch name {
            case "Delia", "Olive", "Frank", "Otis", "Doug":
            break
        default:
            return nil
        }
    }
    func turnLeft() throws {
        guard (currentStepInPath < correctPath.count) else {
            throw PugBotError.EndOfPath
        }
        
        let direction = correctPath[currentStepInPath]
        if direction != .Left {
            throw PugBotError.DidNotTurnLeft(directionMoved: direction)
        }
        currentStepInPath++
    }
    
    func turnRight() throws {
        guard (currentStepInPath < correctPath.count) else {
            throw PugBotError.EndOfPath
        }
        
        let direction = correctPath[currentStepInPath]
        if direction != .Right {
            throw PugBotError.DidNotTurnRight(directionMoved: direction)
        }
        currentStepInPath++
    }
    
    func moveForward() throws {
        guard (currentStepInPath < correctPath.count) else {
            throw PugBotError.EndOfPath
        }
        
        let direction = correctPath[currentStepInPath]
        if direction != .Forward {
            throw PugBotError.DidNotGoForward(directionMoved: direction)
        }
        currentStepInPath++
    }
    
    func goHome() throws {
        try moveForward()
        try turnLeft()
        try moveForward()
        try turnRight()
    }
    

}

func movePugBotSafely(move:() throws -> ()) -> String {
    do {
        try move()
        return "Completed move successfully."
    } catch PugBotError.DidNotTurnLeft(let directionMoved) {
        return "The PugBot was supposed to turn left, but turned \(directionMoved) instead."
    } catch PugBotError.DidNotTurnRight(let directionMoved) {
        return "The PugBot was supposed to turn right, but turned \(directionMoved) instead."
    } catch PugBotError.DidNotGoForward(let directionMoved) {
        return "The PugBot was supposed to move forward, but turned \(directionMoved) instead."
    } catch PugBotError.EndOfPath() {
        return "The PugBot tried to move past the end of the path."
    } catch {
        return "An unknown error occured"
    }
}

let rightDirections: [Direction] = [.Forward, .Left, .Forward, .Right]
let wrongDirections: [Direction] = [.Left, .Left, .Left, .Forward]

let invalidPug = PugBot(name: "Lassie", correctPath: rightDirections)

let myPugBot = PugBot(name: "Delia", correctPath: rightDirections)
let wrongPugBot = PugBot(name: "Delia", correctPath: wrongDirections)

movePugBotSafely {
//    try wrongPugBot?.goHome()
    try wrongPugBot?.moveForward()
}



