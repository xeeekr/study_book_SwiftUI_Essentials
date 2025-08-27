import UIKit

//: 5.2
do {
    print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")
    
    var userName = "John"
    var inboxCount = 25
    let maxCount = 100
    
    var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount - inboxCount) messages."
    
    print(message)
    
    var multiline = """
        The console glowed with flashing warnings.
        Clearly time was running out.
    
        "I thought you said you knew how to fly this!" yelled Mary.
    
        "It was much easier on the simulator" replied her brother,
        trying to keep the panic out of his voice.
    """
    print(multiline)
}

//: 5.6
do {
    let bookTitle: String
    
    let iosBookType: Bool = true
    
    if iosBookType {
        bookTitle = "SwiftUI Essentials"
    } else {
        bookTitle = "Android Studio Development Essentials"
    }
    
    print(bookTitle)
}

//: 5.7
do {
    let myTuple = (10, 432.433, "This is a String")
    
    let myString = myTuple.2
    print(myString)
    
    let (_, _, myString2) = myTuple
    print(myString2)
    
    let myTuple2 = (count: 10, length: 432.433, message: "This is a String")
    print(myTuple2.message)
}

//: 5.8
do {
    var index: Int?
    
    index = 3
    
    let treeArray = ["Oak", "Pine", "Yew", "Birch"]
    
    if index != nil {
        print(treeArray[index!])
    } else {
        print("index does not contain a value")
    }
    
    if let myvalue = index {
        print(treeArray[myvalue])
    } else {
        print("index does not contain a value")
    }
    
    if let index = index {
        print(treeArray[index])
    } else {
        print("index does not contain a value")
    }
    
    if let index {
        print(treeArray[index])
    } else {
        print("index does not contain a value")
    }
    
    var pet1: String?
    var pet2: String?
    
    pet1 = "cat"
    pet2 = "dog"
    
    if let pet1, let pet2 {
        print(pet1)
        print(pet2)
    } else {
        print("insufficient pets")
    }
    
    let petCount = 2
    if let pet1, let pet2, petCount > 1 {
        print(pet1)
        print(pet2)
    } else {
        print("insufficient pets")
    }
    
    var index2: Int!
    
    index2 = 3
    if index != nil {
        print(treeArray[index2])
    } else {
        print("index does not contain a value")
    }
}

//: 5.9
do {
    let myButton: UIButton = UIButton()
    let myControl = myButton as UIControl

    let myScrollView: UIScrollView = UIScrollView()
    //let myTextView = myScrollView as UITextView
    //let myTextView = myScrollView as! UITextView
    if let myTextView = myScrollView as? UITextView {
        print("Type cast to UITextView succeeded")
    } else {
        print("Type cast to UITextView failed")
    }
}
