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

