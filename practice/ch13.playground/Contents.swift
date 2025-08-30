import UIKit

struct Address {
    private var cityname: String = ""
    
    var city: String {
        get { cityname }
        set { cityname = newValue.uppercased() }
    }
}

//: 13.2
var address = Address()

address.city = "London"
print(address.city)

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}

var contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")
print("\(contact.name), \(contact.city), \(contact.country)")

//: 13.3
let _ = {
    @propertyWrapper
    struct MinMaxVal {
        var value: Int
        let max: Int
        let min: Int
        
        init(wrappedValue: Int, min: Int, max: Int) {
            value = wrappedValue
            self.min = min
            self.max = max
        }
        
        var wrappedValue: Int {
            get { value }
            set {
                if newValue > max {
                    value = max
                } else if newValue < min {
                    value = min
                } else {
                    value = newValue
                }
            }
        }
    }
    
    struct Demo {
        @MinMaxVal(min: 100, max: 200) var value: Int = 100
    }
    
    var demo = Demo()
    demo.value = 150
    print(demo.value)
    
    demo.value = 250
    print(demo.value)
}()


@propertyWrapper
struct MinMaxVal<V: Comparable> {
    var value: V
    let max: V
    let min: V
    
    init(wrappedValue: V, min: V, max: V) {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V {
        get { value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct Demo {
    @MinMaxVal(min: "Apple", max: "Orange") var value: String = ""
}

var demo = Demo()
demo.value = "Banana"
print(demo.value)

demo.value = "Pear"
print(demo.value)

struct DateDemo {
    @MinMaxVal(min: Date(), max: Calendar.current.date(byAdding: .month, value: 1, to: Date())!) var value: Date = Date()
}

var dateDemo = DateDemo()

print(dateDemo.value)

dateDemo.value = Calendar.current.date(byAdding: .day, value: 10, to: Date())!
print(dateDemo.value)

dateDemo.value = Calendar.current.date(byAdding: .month, value: 2, to: Date())!
print(dateDemo.value)

