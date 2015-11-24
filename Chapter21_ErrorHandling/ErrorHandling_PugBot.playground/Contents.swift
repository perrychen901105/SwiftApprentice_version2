//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Direction {
    case Left
    case Right
    case Forward
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
}