# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode
# Define a function reverse_words that takes a string as a parameter and returns a string where every
# word is reversed.


# 3. Initial Solution
def reverse_words(string)
  string.split(' ').map{|word| word.reverse}.join(' ')
end



# 4. Refactored Solution
# Nothing to refactor since this challenge is pretty simple.





# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def random_word(length = 5)
  rand(36**length).to_s(36)
end

p reverse_words("") == ""
word = random_word
p reverse_words(word) == word.reverse
word1 = random_word
word2 = random_word
p reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}"
p reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"

# 5. Reflection 
# I found this to be good review of some basic Ruby methods. I did this challenge initially because I 
# thought I could practice regular expressions, but then I realized it doesn't matter for these tests since 
# the split method can just split based on a character. The rest of the challenge was just about chaining
# methods which I'm confident in doing.