import UIKit

var str = "Hello, playground"

func scoreToGrade(score: Int, gradeMapping: (Int) -> String) {
    print("Your score was \(score)%.")
    let result = gradeMapping(score)
    print("That's a \(result).")
}
scoreToGrade(score: 80) { (grade: Int) in
    if grade < 85 {
        return "Fail"
    }
return "pass"
}

//  You’ve made it to the end of the sixth part of this series, so let’s summarize:
//
//  1. You can assign closures to variables, then call them later on.

        let driving = {
            print("I'm driving in my car")
        }

//  2. Closures can accept parameters and return values, like regular functions.

        let driving2 = { (place: String) in
            print("I'm going to \(place) in my car")
        }

//3. You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.

        func travel(action: () -> Void) {
             print("I'm getting ready to go.")
             action()
             print("I arrived!")
        }

//4. If the last parameter to your function is a closure, you can use trailing closure syntax.

            travel {
            print("I'm driving in my car")
            }

//5. Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.

//          travel {
//                "I'm going to \($0) in my car"
//          }

//6. If you use external values inside your closures, they will be captured so the closure can refer to them later.

    //func travel() -> (String) -> Void {
     //    var counter = 1
     //    return {
 //        print ("\(counter). I"m going to \($0)")
 //        counter +=1
            //    }
         //}

