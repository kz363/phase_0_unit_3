# U3.W8-9: Numbers to English Words


# I worked on this challenge by myself.

# 2. Pseudocode
# Create an array for each digits place that holds the appropriate strings of each integer from 1-9
# Define in_words that takes an int and returns the string representation of the number


# 3. Initial Solution
# def in_words(int)
#   ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
#   tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
#   output = ""
#   if int < 19
#     output += ones[int-1]
#   else
#     output += tens[int/10-2] + " " + ones[int%10-1]
#   end

#   output
# end



# 4. Refactored Solution
def in_words(int)
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  if int < 19
    return ones[int-1]
  elsif int < 100
    return tens[int/10-2] + " " + ones[int%10-1]
  elsif int%10 == 0
    return ones[int/100-1] + " hundred"
  else
    return ones[int/100-1] + " hundred " + in_words(int%100)
  end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p in_words(4) == "four"
p in_words(10) == "ten"
p in_words(17) == "seventeen"
p in_words(27) == "twenty seven"
p in_words(42) == "forty two"
p in_words(99) == "ninety nine"
p in_words(100) == "one hundred"
p in_words(217) == "two hundred seventeen"
p in_words(777) == "seven hundred seventy seven"
p in_words(901) == "nine hundred one"



# 5. Reflection
# This challenge wasn't that difficult logic-wise. I spent most of the challenge trying to get my ouput 
# formatted properly, which I find kind of fun for some reason. The only thing I don't like about my 
# refactored code is the condition on line 35. I had to add that in for multiples of 100 otherwise the 
# output string would have a whitespace at the end. There's probably a more elegant solution but I settled
# for the easy way out.