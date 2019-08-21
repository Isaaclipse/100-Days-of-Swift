import UIKit

var str = "Hello, playground"

//
//  day6.swift
//  learnSwift
//
//  Created by Isaac Atif on 8/20/19.
//  Copyright © 2019 Isaac Atif. All rights reserved.
//

import Foundation

//
//var signAutograph(to name: String) = {
//    print("To \(name), my #1 fan")
//}
//signAutograph(to: "Lisa")
//TRUE  FALSE
//Oops – that's not correct. Unlike functions, closures put their parameters inside the opening brace.
//
//CONTINUE

//var paintPicture() {
//    print("Where are my watercolors?")
//}

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
//
//One of the differences between functions and closures is that you don’t use parameter labels when running closures. So, to call driving() now we’d write this:

driving("london")

//var pickFruit = { (name: String) in
//    switch name {
//    case strawberry:
//        fallthrough
//    case raspberry:
//        print("Strawberries and raspberries are half price!")
//    default:
//        print("We don't have those.")
//    }
//}
//
//pickFruit("strawberry")
//TRUE  FALSE
//Oops – that's not correct. This is trying to do case matching on strings, but doesn't wrap "strawberry" or "raspberry" in quote marks.

//We want a closure that returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function:

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//We can now run that closure and print its return value:

let message = drivingWithReturn("Liverpool")
print(message)


//Is this valid Swift? True or False?

//let goSurfing = { (waveHeight: Int) in
//    if waveHeight < 5 {
//        return "Let's go!"
//    } else if waveHeight < 10 {
//        return "This could be tricky"
//    } else if waveHeight < 20 {
//        return "Only a pro could do that"
//    } else {
//        return "No way!"
//    }
//}

//FALSE
//This doesn't tell Swift what data type will be returned.


//PASSING CLOSURES AS PARAMETERS

//Because closures can be used just like strings and integers, you can pass them into functions. The syntax for this can hurt your brain at first, so we’re going to take it slow.
//
//First, here’s our basic driving() closure again
//
//let driving = {
//    print("I'm driving in my car")
//}
//If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.
//
//So, we can write a travel() function that accepts different kinds of traveling actions, and prints a message before and after:
//
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//We can now call that using our driving closure, like this:
//
//travel(action: driving)


//Trailing closure syntax
//
//If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.
//
//To demonstrate this, here’s our travel() function again. It accepts an action closure so that it can be run between two print() calls:
//
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//Because its last parameter is a closure, we can call travel() using trailing closure syntax like this:
//
//travel() {
//    print("I'm driving in my car")
//}
//In fact, because there aren’t any other parameters, we can eliminate the parentheses entirely:
//
//travel {
//    print("I'm driving in my car")
//}
//Trailing closure syntax is extremely common in Swift, so it’s worth getting used to.
//
