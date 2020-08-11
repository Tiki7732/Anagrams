def first_anagram?(word1, word2)
    anagrams = word1.split("").permutation.to_a
    return true if anagrams.include?(word2.split(""))
    false
end
# O(2^n) time, O(n) space

def second_anagram?(word1, word2)
    second = word2.split("")
    word1.each_char do |char|
        next if second.find_index(char).nil?
        second.delete_at(second.find_index(char))
    end
    return true if second.empty?
    false
end
# O(n^2) time O(n) space

def third_anagram?(word1, word2)
    sorted1 = word1.split("").sort
    sorted2 = word2.split("").sort
    return true if sorted1 == sorted2
    false
end
# O(n log n) time, O(n) space

def fourth_anagram?(word1, word2)
    char_hash = Hash.new(0)
    word1.each_char {|char| char_hash[char] += 1}
    word2.each_char {|char| char_hash[char] -= 1}
    return true if char_hash.values.sum == 0
end
# O(n) time O(1) space


p first_anagram?("elvis", "lives")
#p first_anagram?("theworldisgonnarollme", "metheworldisgonnaroll")
p second_anagram?("elvis", "lives")
p second_anagram?("cat", "batc")
p second_anagram?("theworldisgonnarollme", "metheworldisgonnaroll")
p third_anagram?("elvis", "lives")
p third_anagram?("theworldisgonnarollme", "metheworldisgonnaroll")
p fourth_anagram?("elvis", "lives")
p fourth_anagram?("elvis", "livss")
p fourth_anagram?("theworldisgonnarollme", "metheworldisgonnaroll")