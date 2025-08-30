import UIKit

struct SampleStruct {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() {
        "Hello" + name
    }
}

class SampleClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() {
        "Hello" + name
    }
}

//: 12.1
let myStruct = SampleStruct(name: "Mark")
let myClass = SampleClass(name: "Mark")


//: 12.2
let myStruct1 = SampleStruct(name: "Mark")
var myStruct2 = myStruct1
myStruct2.name = "David"

print(myStruct1.name)
print(myStruct2.name)

let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name)
print(myClass2.name)


//: 12.4
enum Temperature {
    case hot
    case warm
    case cold(centigrade: Int)
}

func displayTempInfo(temp: Temperature) {
    switch temp {
        case .hot:
            print("It is hot.")
        case .warm:
            print("It is warm.")
        case .cold(let centigrade) where centigrade <= 0:
            print("Ice warning: \(centigrade) degrees.")
        case .cold:
            print("It is cold but not freezing.")
    }
}

displayTempInfo(temp : Temperature.warm)
displayTempInfo(temp: Temperature.cold(centigrade: -10))
