func commonItemsBrute( _ Array: [Int], _ Bin: [Int]) -> Bool {
    for i in 0..<Array.count {
        for j in 0..<Bin.count {
            if Array[i] == Bin[j] {
                return true
            }
        }
    }
    return false
}
let bin =  [1, 2, 3]
let bin2 = [3, 5, 6]
  

print(commonItemsBrute(bin, bin2))
print(commonItemsBrute([1, 2, 3], [3, 5, 6]))

