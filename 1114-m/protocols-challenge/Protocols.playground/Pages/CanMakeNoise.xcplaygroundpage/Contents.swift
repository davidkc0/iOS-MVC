//: Playground - noun: a place where people can play

import UIKit

protocol CanMakeNoise {
  func makeNoise()
}

class Human: CanMakeNoise {
      var noise = "yooo"
    
    internal func makeNoise() {
        noise
    }

}

class Pig: CanMakeNoise {
    var noise = "onk onk"
    func makeNoise() {
        noise
    }
}

class Cow: CanMakeNoise {
    var noise = "moo"
    func makeNoise() {
        noise
    }
}

let human = Human()
let pig = Pig()
let cow = Cow()

let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]

/*:
 **Tasks**:
 1. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes. Think about a noise each class could make and print it to the console using `print`.
 2. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 */

