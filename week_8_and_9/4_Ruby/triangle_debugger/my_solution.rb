# U3.W8-9: Triangle Debugger


# I worked on this challenge by myself.


# 1. Original Solution

# def valid_triangle?(a, b, c, sum)
#   if a != 0 || b != 0 || c != 0
#   if a >= b
#   largest = a
#   sum += b
#   else largest = b
#   sum += a
#   end
#   if c > largest
#   sum += largest
#   largest = c
#   else sum += c
#   end
#   if sum > largest
#   return "true"
#   else return "false"
#   end
#   else return "false"
#   end
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# ArgumentError
# * what is the exact line number the error is appearing?
# 9
# * before you fix the bug, what do you think is causing the error?
# sum shouldn't be in the parameters

# --- Bug 2 ---
# * what is the exact description of the error?
# * what is the exact line number the error is appearing?
# * before you fix the bug, what do you think is causing the error?

# --- Bug 3 ---
# * what is the exact description of the error?
# * what is the exact line number the error is appearing?
# * before you fix the bug, what do you think is causing the error?


# 3. Refactored Solution (Comment the other code to run this)
def valid_triangle?(a, b, c)
  sum = 0
  if a != 0 || b != 0 || c != 0
    if a >= b
      largest = a
      sum += b
    else 
      largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else 
      sum += c
    end
    if sum > largest
      return true
    else 
      return false
    end
  else 
    return false
  end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE




# 5. Reflection 
# I had trouble figuring out what exactly I was supposed to answer in the questions about the bugs. Running
# the rspec tests only returns on "real" error which is the ArgumentError. Everything else after that just 
# fails because the rest of the code relies on that 4th argument which the tests don't give. It seems to me
# that you can only find out what the other bugs are AFTER fixing one bug, so that's what I did while refactoring
# the old code. After fixing the argument bug, the only tests that failed were when an argument equaled 0 and 
# when it was an impossible triangle. It took me a while to figure out why because I kept double-checking the
# logic and I thought it sounded fine in my head. Then I realized true/false where strings instead of booleans,
# and I laughed a bit. I don't know why the other tests passed but tiny mistakes like those happen in code all
# the time and they're hard to find.