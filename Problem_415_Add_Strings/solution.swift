class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var num1Copy = num1, num2Copy = num2
        var result: String = ""
        var reminder: Int = 0
        
        // make both strings equal in length by adding leading zeros
        if num1Copy.count < num2Copy.count {
            num1Copy = String(repeating: "0", count: abs(num1Copy.count - num2Copy.count)) + num1Copy
        } else {
            num2Copy = String(repeating: "0", count: abs(num1Copy.count - num2Copy.count)) + num2Copy
        }
        
        // process each digit
        for _ in 0..<num1Copy.count {
            let num1: Int = Int((num1Copy.popLast()?.asciiValue ?? 0) - (Character("0").asciiValue ?? 0))
            let num2: Int = Int((num2Copy.popLast()?.asciiValue ?? 0) - (Character("0").asciiValue ?? 0))
            let sum: Int = num1 + num2 + reminder
            reminder = sum / 10
            result = String(sum % 10) + result
        }
        
        // add the remaining carry
        if reminder == 1 {
            result = "1" + result
        }
        
        return result
    }
}
