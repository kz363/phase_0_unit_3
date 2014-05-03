# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
# Iterate through the input array
# if element is divisible by 3, set it to Fizz
# if element is divisible by 5, set it to Buzz
# if element is divisible by 15, set it to FizzBuzz


# 3. Initial Solution

# def super_fizzbuzz(array)
#   array.map do |i|
#     if i%15 == 0
#       i = 'FizzBuzz'
#     elsif i%5 == 0
#       i = 'Buzz'
#     elsif i%3 == 0
#       i = 'Fizz'
#     else 
#       i
#     end
#   end
# end



# 4. Refactored Solution

def super_fizzbuzz(array)
  array.map do |i|
    case
      when i % 15 == 0 then 'FizzBuzz'
      when i % 3 == 0 then 'Fizz'
      when i % 5 == 0 then 'Buzz'
      else i
    end
  end
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p super_fizzbuzz([3]*100) == ["Fizz"]*100
p super_fizzbuzz([5]*100) == ["Buzz"]*100
p super_fizzbuzz([15]*100) == ["FizzBuzz"]*100
p super_fizzbuzz([1,2,3]) == [1,2,'Fizz']
p super_fizzbuzz([15,5,3,1]) == ['FizzBuzz','Buzz','Fizz',1]




# 5. Reflection
# I ran into some trouble trying to implement the solution with one-line if statements, but it worked when 
# I just switched to else if's. This challenging was interesting because I'm used to doing FizzBuzz where 
# the solution just prints the FizzBuzz, but this one involves editing elements of an array so it's a bit 
# different. Overall I think this was a good refresher because I relearned how to use case.