class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        // сheck if the word is uppercase, lowercase, or if the 1st letter is uppercase and the rest are lowercase
        word.allSatisfy{$0.isUppercase} ||
        word.allSatisfy{$0.isLowercase} ||
        ((word.first?.isUppercase ?? false) && word.dropFirst().allSatisfy{$0.isLowercase})
    }
}
