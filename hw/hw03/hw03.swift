func num_eights(_ pos: Int) -> Int {
    if pos == 0 {
        return 0
    }
    if pos % 10 == 8 {
        return 1 + num_eights(pos / 10)
    } else {
        return num_eights(pos / 10)
    }
}

print("DEBUG:", num_eights(88888888))

/**
 iteration 
 
 */

func pingpong(_ n: Int) -> Int {
//    var idx = 1
//    var sign = 1
//    var res = 0
//    while idx <= n {
//        res += sign
//        sign *= changeSign(idx)
//        idx += 1
//    }
//    return res
    return pingpong_recursive(final: n, index: 1, sign: 1)
}

func changeSign(_ idx: Int) -> Int {
    if idx % 8 == 0 || has_eight(idx) {
        return -1
    }
    return 1
}

func has_eight(_ k: Int) -> Bool {
    if k % 10 == 8 {
        return true
    } else if k <= 0 {
        return false
    }
    return has_eight(k / 10)
}
//print("DEBUG:", has_eight(70))
//
//print("DEBUG:", pingpong(30))

func pingpong_recursive(final: Int, index: Int, sign: Int) -> Int {
    if index <= final {
        var signChanged = sign * changeSign(index)
        var idx = index + 1
        print("DEBUG: ", index, " ", sign)
        return sign + pingpong_recursive(final: final, index: idx, sign: signChanged)
    } else {
        return 0
    }
}

print("DEBUG:", pingpong(18))
