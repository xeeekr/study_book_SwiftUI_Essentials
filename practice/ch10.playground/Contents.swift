import UIKit

class BankAccount {
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    var balanceLessFees: Float {
        get {
            return accountBalance - fees
        }
        
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    deinit {
        
    }
    
    func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var account1: BankAccount = BankAccount(number: 12312312, balance: 400.54)
var balance1 = account1.accountBalance
account1.accountBalance = 6789.98
account1.displayBalance()

var maxAllowed = BankAccount.getMaxBalance()

balance1 = account1.balanceLessFees
account1.balanceLessFees = 12123.12

protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func buildMessage() -> String {
        "Hello " + name
    }
}

func doubleFunc1(value: Int) -> some Equatable {
    value * 2
}

func doubleFunc2(value: String) -> some Equatable {
    value + value
}

let intOne = doubleFunc1(value: 10)
let stringOne = doubleFunc2(value: "Hello")

//if (intOne == stringOne) {
//    print("They match")
//}
