# Phase 1

def first_anagram?(word1, word2)
    anagrams = word1.split("").permutation.to_a
    return true if anagrams.include?(word2.split(""))
    false
end

p first_anagram?("elvis", "lives")