
//You’ve made it to the end of the eighth part of this series, so let’s summarize:

// ONE:
    // Classes and structs are similar, in that they can both let you create your own types with properties and methods.

    class Dog {
        var name: String
        init (name: String) {
            self.name = name
        }
        func makeNoise() {}
    }


//TWO:
    // One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
        
    class Poodle: Dog {
        override init(name: String) {
        super.init(name: name)
        }
    }

//THREE:
    // You can mark a class with the final keyword, which stops other classes from inheriting from it.

    final class Canine {
        var name: String
        
        init(name: String) {
            self.name = name
        }
    }

//FOUR:
      //Method overriding lets a child class replace a method in its parent class with a new             implementation.

    class Terrier: Dog {
        override func makeNoise() {
            print("Yip!")
        }
    }

//FIVE:
     //When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.

    class artist {
        var name = "Taylor Swift"
    }
     
        var singer = artist()
        
        var singerCopy = singer
        singerCopy.name = "Justin Bieber"
        print(singer.name)

//SIX:
    //Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.

//    class hospital {
//        var name = String
//        deinit{
//            print("\(name) is no more!")
//        }
//    }

//SEVEN:
    //Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.

class rapper {
    var name = "T Swizzle"
}

let tswizzle = rapper()
tswizzle.name = "Ed Sheeran"

