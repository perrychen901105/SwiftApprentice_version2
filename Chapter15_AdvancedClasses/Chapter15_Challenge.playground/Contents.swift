//: Playground - noun: a place where people can play

import UIKit

class A {
    init () {
        print("I'm A!")
    }
    
}

class B: A {
    override init() {
        print("I'm B!")
        super.init()
        print("I'm B!")
    }
}

class C: B {
    override init() {
        print("I'm C!")
        super.init()
        print("I'm C!")
    }
}

var c = C()
