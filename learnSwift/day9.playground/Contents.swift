//
//  day9.swift
//
//
//  Created by Isaac Atif on 8/23/19.
//

//
//
//STRUCTS SUMMARY

// ONE: You can create your own types using structures, which can have their own properties and methods..

struct Sport {
    var name: String
}

Sport(name: "basketball")

// TWO: You can use stored properties or use computed properties to calculate values on the fly.

//var olympicStatus: String {
//    if isOlympicSport {
//        return "\(name) is an Olympic sport”
//    } else {
//        return "\(name) is not an Olympic sport”
//    }
//}

//THREE:
//If you want to change a properrty inside a a method, you must mark it as mutating

struct novel {
    var name: String
    
mutating func makeAnonymous() {
    name = "Anonymous"
}
}


// FOUR: Initializers are special methods that create structs. You get a member wise initializer by default, but if you create your own you must give all properties a value.

struct Website {
    var username: String
init() {
    username = "Anonymous"
    print("Creating a new user!")
}
}

//FIVE: Use the SELF constant to refer to the current instance of a struct inside a method…

struct person {
    var name: String

init(name: String) {
    print("\(name) was born!")
    self.name = name
}
}

//SIX: The LAZY keyword tells Swift to create properties only when they are first used..

struct Person {
    var Family: String
    var name: String
    lazy var familyTree = Family
}

//SEVEN: You can share properties and methods across all instances of a struct using the static keywords
    
    struct Student {
        static var classSize = 0
        var name: String
    }
    
//EIGHT: Access control lets you restrict what code can use properties.
    
    struct student {
        private var id: String
        
        init(id: String) {
            self.id = id
        }
}
