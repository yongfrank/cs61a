
class Account {
    var max_withdrawal: Double = 10
    var intrest: Double = 0.02
    var balance: Double
    var holder: String
    
    init(_ account_holder: String) {
        self.balance = 0
        self.holder = account_holder
    }
    
    func deposit(_ amount: Double) -> Double {
        self.balance += amount
        return self.balance
    }
    
    func withdraw(_ amount: Double) -> Any {
        if amount > self.balance {
            return "Insufficient funds"
        }
        if amount > self.max_withdrawal {
            return "Can't withdraw that amount"
        }
        self.balance -= amount
        return self.balance
    }
    
    func time_to_retire(_ amount: Double) -> Int{
        var year = 0
        var balance = self.balance
        while(balance < amount) {
            year += 1
            balance *= (1 + self.intrest)
        }
        return year
    }
}
class FreeChecking: Account {
    var withdral_fee = 1
    var free_withdrawls = 2
    
    override func withdraw(_ amount: Double) -> Any {
        if self.free_withdrawls > 0 {
            self.free_withdrawls -= 1
        } else {
            print("free withdrawls is", self.free_withdrawls)
            self.balance -= Double(self.withdral_fee)
        }
        return super.withdraw(amount)
    }
}
var ch = FreeChecking("Jack")
ch.deposit(20)
print(ch.balance)
print(ch.withdraw(100))
print(ch.withdraw(15))
print(ch.withdraw(3))
var ch2 = FreeChecking("John")
print(ch2.withdraw(3))


//var a = Account("John")
//print(a.deposit(10))
//print(a.balance)
//print(a.intrest)
//print(a.time_to_retire(10.25))
//print(a.balance)
//print(a.time_to_retire(11))
//print(a.time_to_retire(100))
