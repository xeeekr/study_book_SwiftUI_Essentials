import UIKit

//: 14.2
var treeArray = ["Pine", "Oak", "Yew"]

let _ = {
    let treeArray = ["Pine", "Oak", "Yew"]
}()
let _ = {
    var treeArray: [String] = ["Pine", "Oak", "Yew"]
}()
var priceArray = [Float]()
var nameArray = [String](repeating: "My String", count: 10)

let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]

let thirdArray = firstArray + secondArray

//: 14.3
var itemCount = treeArray.count
print(itemCount)

if treeArray.isEmpty {
}

print(treeArray[2])

treeArray[1] = "Redwood"

let shuffledTrees = treeArray.shuffled()
let randomTree = treeArray.randomElement()

treeArray.append("Redwood")
treeArray += ["Redwood"]
treeArray += ["Redwood", "Maple", "Birch"]

treeArray.insert("Maple", at: 0)
treeArray.remove(at: 2)
treeArray.removeLast()

for tree in treeArray {
    print(tree)
}
treeArray.forEach { tree in
    print(tree)
}
treeArray.forEach {
    print($0)
}

//: 14.4
let _ = {
    let mixedArray: [Any] = ["A String", 432, 34.989]
}()
let mixedArray: [Any] = [1, 2, 45, "Hello"]
for object in mixedArray {
//    print(object * 10)
//    print(object as! Int * 10)
}

//: 14.6
var bookDict = ["100-432112" : "Wind in the Willows",
                "200-532874" : "Tale of Two Cities",
                "202-546549" : "Sense and Sensibility",
                "104-109834" : "Shutter Island"]
let _ = {
    var bookDict: [String: String] = ["100-432112" : "Wind in the Willows",
                    "200-532874" : "Tale of Two Cities",
                    "202-546549" : "Sense and Sensibility",
                    "104-109834" : "Shutter Island"]
}()

var myDictionary = [Int: String]()

//: 14.7
let _ = {
    let keys = ["100-432112", "200-532874", "202-546549", "104-109834"]
    let values = ["Wind in the Willows", "Tale of Two Cities", "Sense and Sensibility", "Shutter Island"]
    
    var bookDict = Dictionary(uniqueKeysWithValues: zip(keys, values))
}()
let _ = {
    let values = ["Wind in the Willows", "Tale of Two Cities", "Sense and Sensibility", "Shutter Island"]
    
    var bookDict = Dictionary(uniqueKeysWithValues: zip(1..., values))
}()

//: 14.8
print(bookDict.count)

//: 14.9
print(bookDict["200-532874"])
print(bookDict["999-546547", default: "Book not found"])
bookDict["200-532874"] = "Sense and Sensibility"
bookDict.updateValue("The Ruins", forKey: "200-532874")

//: 14.10
bookDict["300-898871"] = "The Overlook"
bookDict["300-898871"] = nil
bookDict.removeValue(forKey: "300-898871")

//: 14.11
for (bookid, title) in bookDict {
    print("Book ID: \(bookid) Title: \(title)")
}

