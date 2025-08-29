import UIKit

//: 6.1
do {
    var myresult = 1 + 2
}

//: 6.2
do {
    var x: Int?
    var y = 10
    
    x = 10
    x = x! + y
    x = y
}

//: 6.3
do {
    let y = 1
    let z = 1
    let x = y * 10 + z - 5 / 4
}

//: 6.4
do {
    var x = 1
    let y = 1
    
    x = x + y
    x += y
}

//: 6.5
do {
    let x = 10
    let y = 20
    
    if x == y {
        
    }
    
    var result: Bool?
    result = x < y
}

//: 6.6
do {
    var flag = true
    var secondFlag = !flag
    
    func printTrue() {
        print("Expression is true")
    }
    
    if (10 < 20) || (20 < 10) {
        printTrue()
    }
    
    if (10 < 20) && (20 < 10) {
        printTrue()
    }
}

//: 6.7
do {
    
}

//: 6.8
do {
    let x = 10
    let y = 20
    
    print("Largest number is \(x > y ? x : y)")
}

//: 6.9
do {
    var customerName: String? = nil
    func printCustomerName() {
        print("Welcome back, \(customerName ?? "customer")")
    }
    
    printCustomerName()
    
    customerName = "John"
    printCustomerName()
}

//: 6.10
do {
    let x = 171
    let y = 3
    var z = ~y
    
    func printz() {
        print("Result is \(z)")
    }

    z = x & y
    printz()
    
    z = x | y
    printz()
    
    z = x ^ y
    printz()
    
    z = x << 1
    printz()
    
    z = x >> 1
    printz()
}
