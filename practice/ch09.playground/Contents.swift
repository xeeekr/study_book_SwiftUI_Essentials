import UIKit

//: 9.3
func sayHello() {
    print("Hello")
}
func buildMessageFor(name: String, count: Int) -> String {
    return ("\(name), you are customer number \(count)")
}

//: 9.4
do {
    func buildMessageFor(name: String, count: Int) -> String {
        "\(name), you are customer number \(count)"
    }
}

//: 9.5
sayHello()

//: 9.6
do {
    let message = buildMessageFor(name: "John", count: 100)
    _ = buildMessageFor(name: "John", count: 100)
}

//: 9.7
do {
    func buildMessageFor(_ name: String, _ count: Int) -> String {
        return ("\(name), 1you are customer number \(count)")
    }
    func buildMessageFor(userName name: String, userCount count: Int) -> String {
        return ("\(name), 2you are customer number \(count)")
    }
    
    _ = buildMessageFor("John", 100)
    _ = buildMessageFor(userName: "John", userCount: 100)
}

//: 9.8
do {
    func buildMessageFor(_ name: String = "Customer", count: Int) -> String {
        return ("\(name), you are customer number \(count)")
    }
    
    print(buildMessageFor(count: 100))
}

//: 9.9
do {
    func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float) {
        (length * 0.0277778, length * 2.54, length * 0.0254)
    }
    
    let lengthTuple = sizeConverter(20)
    print(lengthTuple.yards)
    print(lengthTuple.centimeters)
    print(lengthTuple.meters)
    
    let (yards, centimeters, meters) = sizeConverter(20)
    print(yards)
    print(centimeters)
    print(meters)
}

//: 9.10
do {
    func displayStrings(_ strings: String...) {
        for string in strings {
            print(string)
        }
    }
    
    displayStrings("one", "two", "three", "four")
}

//: 9.11
do {
    func calcuateArea(length: Float, width: Float) -> Float {
        var length = length
        var width = width
        
        length = length * 2.54
        width = width * 2.54
        return length * width
    }
    
    print(calcuateArea(length: 10, width: 20))
}

//: 9.12
do {
    var myValue = 10
    
    func doubleValue(_ value: Int) -> Int {
        var value = value
        value += value
        return (value)
    }
    
    print("Before function call myValue = \(myValue)")
    print("doubleValue call returns \(doubleValue(myValue))")
    print("After function call myValue = \(myValue)")
}
do {
    var myValue = 10
    
    func doubleValue(_ value: inout Int) -> Int {
        value += value
        return (value)
    }
    
    print("Before function call myValue = \(myValue)")
    print("doubleValue call returns \(doubleValue(&myValue))")
    print("After function call myValue = \(myValue)")
}

//: 9.13
do {
    func inchesToFeet (_ inches: Float) -> Float {
        inches * 0.0833333
    }
    func inchesToYards (_ inches: Float) -> Float {
        inches * 0.0277778
    }
    func outputConversion(_ converterFunc: (Float) -> Float, value: Float) {
        let result = converterFunc(value)
        
        print("Result of conversion is \(result)")
    }
    
    let toFeet = inchesToFeet
    let toYards = inchesToYards
    
    outputConversion(toYards, value: 10)
    outputConversion(toFeet, value: 10)
    
    func decideFunction(_ feet: Bool) -> (Float) -> Float {
        if feet {
            return toFeet
        } else {
            return toYards
        }
    }
     
   outputConversion(decideFunction(false), value: 10)
   outputConversion(decideFunction(true), value: 10)
}

//: 9.14
let _ = {
    let sayHello = { print("Hello") }
    sayHello()
    
    let multiply = {(_ val1: Int, _ val2: Int) -> Int in
        return val1 * val2
    }
    let result = multiply(10, 20)
}()

//: 9.15
let _ = {
    let join = {(string1: String, string2: String) -> String in
        string1 + string2
    }
    
    let join2: (String, String) -> String = {
        $0 + $1
    }
}()

//: 9.16
let _ = {
    func functionA() -> () -> Int {
        var counter = 0
        
        func functionB() -> Int {
            return counter + 10
        }
        
        return functionB
    }
    
    let myClosure = functionA()
    let result = myClosure()
}()
