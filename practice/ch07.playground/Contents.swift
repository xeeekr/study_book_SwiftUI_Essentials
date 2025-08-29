import UIKit

//: 7.2
do {
    for index in 1...5 {
        print("Value of index is \(index)")
    }
    
    var count = 0
    for _ in 1...5 {
        count += 1
    }
    
    var myCount = 0
    
    while myCount < 100 {
        myCount += 1
    }
}

//: 7.3
do {
    var i = 10
    
    repeat {
        i -= 1
    } while (i > 0)
}

//: 7.4
do {
    var j = 10
    
    for _ in 0..<100 {
        j += j
        if j > 100 {
            break
        }
        
        print("j = \(j)")
    }
}

//: 7.5
do {
    var i = 1
    
    while i < 20 {
        i += 1
        
        if (i % 2) != 0 {
            continue
        }
        
        print("i = \(i)")
    }
}

//: 7.7
do {
    let x = 10
    
    if x > 9 {
        print("x is greater than 9")
    }
}

//: 7.8
do {
    let x = 10
    
    if x > 9 {
        print("x is greater than 9!")
    } else {
        print("x is less tan 9!")
    }
}

//: 7.9
do {
    let x = 9
    
    if x == 10 {
        print("x is 10")
    } else if x == 9 {
        print("x is 9")
    } else if x == 8 {
        print("x is 8")
    }
}

//: 7.10
do {
    func multiplyByTen(value: Int?) {
        guard let number = value, number < 10 else {
            print("Number is too high")
            return
        }
        
        let retusl = number * 10
        print(retusl)
    }
    
    multiplyByTen(value: 5)
    multiplyByTen(value: 10)
}


