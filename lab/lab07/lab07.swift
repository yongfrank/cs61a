class Link {
    var empty = ()
    var first: Int
    var rest: Link?
    
    init(_ first: Int, _ rest: Link? = nil) {
        self.first = first
        self.rest = rest
    }
    
    func __repr__(_ link: Link) -> String? {
        var restRepr: String = ""
        if let rest = link.rest {
            if let restStr = __repr__(rest) {
                restRepr = ", " + restStr
            }
        } else {
            restRepr = ""
        }
        return "Link(" + String(link.first) + restRepr + ")"
    }
}


var s = Link(1, Link(3, Link(4)))
print(s.__repr__(s)!)

func StoreDigits(_ number: inout Int) -> Link? {
    var result: Link? = nil
    
    while number > 0 {
        result = Link(number % 10, result)
        number /= 10
    }
    return result
}
var num = 1234
var ss = StoreDigits(&num)!
print(ss.__repr__(ss)!)
