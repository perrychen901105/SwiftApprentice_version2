//: Playground - noun: a place where people can play

import UIKit

class List {
    var name: String?
    var movieTitles = Set<String>()
    init (name: String, movies: Set<String>) {
        self.name = name
        self.movieTitles = self.movieTitles.union(movies)
    }
    func printList() {
        for movie in movieTitles.enumerate() {
            print("\(movie.element)")
        }
    }
}

class User {
    var dicList = [String: List]()
    func addList(list: List) {
        if let lname = list.name {
            self.dicList.updateValue(list, forKey: lname)
        }
        
    }
    
    init(lists: [String: List]) {
        self.dicList = lists;
    }
    
    func getList(name: String) -> List {
        guard let templist = self.dicList[name] else {
            fatalError("there has no list available")
        }
        return templist
    }
}

var actionMovies: Set<String> = ["movie a", "movie b", "movie c"]

var listShare = List(name: "Action", movies: actionMovies)
var listShare2 = List(name: "Action", movies: ["movie d", "movie b", "movie c"])
var jane = User(lists: [listShare.name!: listShare])
var john = User(lists: [listShare.name!: listShare])

jane.dicList = [listShare.name!: listShare2]

jane.getList("Action").printList()

print("########")

john.getList("Action").printList()



