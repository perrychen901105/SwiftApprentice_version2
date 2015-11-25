//: Playground - noun: a place where people can play

import UIKit

enum PetKind {
    case Cat
    case Dog
}

struct KeeperKind {
    var keeperOf: PetKind
}

let catKeeper = KeeperKind(keeperOf: .Cat)
let dogKeeper = KeeperKind(keeperOf: .Dog)