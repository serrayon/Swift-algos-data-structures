func isPalindrome(_ text: String) -> Bool{
    let chars = Array(text)
    let length = chars.count

    for i in 0..<length/2 {
        if chars[i] != chars[length - i - 1]{
            return false
        }
    }
    return true
}

print(isPalindrome("abba"))
print(isPalindrome("mom"))
print(isPalindrome("dad"))
print(isPalindrome("radar"))
print(isPalindrome("rush"))
print(isPalindrome("yes"))

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
