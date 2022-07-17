let numbers: [Any] = [[1, 2, 3], 4, [5, 6]]
func flatten(_ s: [Any]) -> [Any] {
    if s.isEmpty {
        return []
    } else if type(of: s[0]) == Int.self {
        return [s[0]] + flatten(Array(s[1...]))
    } else {
        return flatten(s[0] as! [Any]) + flatten(Array(s[1...]))
    }
}
print(flatten(numbers))


func insert_items(lst: inout [Int], entry: Int, elem: Int) -> [Int] {
    for (idx, item) in lst.enumerated() {
        if item == entry && lst[idx] != lst[idx - 1]{
            lst.insert(elem, at: idx + 1)
        }
        print("DEBUG:", item)
    }
    return lst
}
var lst = [1,4,4,8]
insert_items(lst: &lst, entry: 4, elem: 6)
print(lst)

class Minty {
    static var present_year = 2021
    var year: Int
    
    init() {
        self.year = Minty.present_year
    }
    
    func create(_ type: CoinType) -> Coin {
        return Coin(year: self.year, type: type)
    }
    
    func update() {
        self.year = Minty.present_year
    }
}

class Coin {
    var year : Int
    private var cents = 50
    
    init(year: Int, type: CoinType) {
        self.year = year
        switch type {
        case .Dime:
            self.cents = 10
        case .Nickel:
            self.cents = 5
        }
    }
    
    func worth() -> Int {
        return max(0, Minty.present_year - self.year - 50) + self.cents
    }
}

enum CoinType {
    case Dime, Nickel
}
var mint = Minty()
print("mint.year", mint.year)
var dime = mint.create(.Dime)
print("dime.year", dime.year)
Minty.present_year = 2101
var nickel = mint.create(.Nickel)
print("nickel.year", nickel.year)
print("nickel.worth", nickel.worth())
mint.update()
Minty.present_year = 2176
print("mint.create(.Dime).worth()", mint.create(.Dime).worth())
print("Minty().create(.Dime).worth()", Minty().create(.Dime).worth())
print("dime.worth()", dime.worth())
