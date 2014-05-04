# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  sql = $db.prepare "SELECT name FROM congress_members WHERE location = 'AZ'"
  az_reps = sql.execute
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  sql = $db.prepare "SELECT name,years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}"
  longest_reps = sql.execute
  longest_reps.each {|name,years| puts "#{name} - #{years}"}
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{grade_level} grade)"
  sql = $db.prepare "SELECT name FROM congress_members WHERE grade_current < #{grade_level}"
  puts sql.execute.each {|rep| puts rep}
end

def print_these_state_representatives
  puts "STATE REPRESENTATIVES FROM NEW JERSEY, NEW YORK, MAINE, FLORIDA, AND ALASKA"
  sql = $db.prepare "SELECT name FROM congress_members WHERE location IN ('NJ', 'NY', 'ME', 'FL', 'AL')"
  puts sql.execute.each {|rep| puts rep}
end

def print_politicians_votes
  puts "POLITICIANS AND THE NUMBER OF VOTES RECEIVED"
  sql = $db.prepare "SELECT name,COUNT(voter_id) FROM congress_members JOIN votes ON congress_members.id = politician_id GROUP BY name"
  puts sql.execute.each {|name,votes| puts "#{name} - #{votes} votes"}
end

def print_politicians_voters
  puts "POLITICIANS AND THEIR VOTERS"
  sql = $db.prepare "SELECT name,first_name||' '||last_name FROM congress_members,voters,votes WHERE politician_id = congress_members.id AND voter_id = voters.id"
  output_hash = Hash.new{|h,k| h[k] = []}
  sql.execute.each {|name,voters| output_hash["#{name}"] << "#{voters}"}
  output_hash.sort.each {|k,v| puts "#{k} - #{v.join(", ")}"}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years
print_longest_serving_reps(35)

# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column
print_separator
print_lowest_grade_level_speakers(8)

# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)
print_separator
print_these_state_representatives

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.
# I don't know if I actually did this correctly since I don't know how to test against SQL injections, but 
# I used prepare statements as I learned from this link http://stackoverflow.com/questions/2258781/preventing-sql-injection-good-ruby-method

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print_separator
print_politicians_votes

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!
print_separator
print_politicians_voters

# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.
# It seems like sqlite3 gem installs a Database class to Ruby, and #execute is one 
# of the methods in that class. $db is initialized on line 8 and #execute is being 
# called on it when we run a SQL statement.

# Overall, I'm still very confused about this whole challenge. I took an "as long as I get it done" approach
# to it and I did finish, but I don't know if I did everything properly. I don't really like the documentation
# on sqlite3 gem because it's not as user-friendly as the Ruby docs. My main problem is that I don't know how 
# sqlite3's ResultSet stores data so I can't really visualize it. It behaves like a hash and array at the same 
# time, but I can't really tell. I also spent a lot of time on print_politicians_voters because I couldn't get 
# the output to print out properly, but I ended up using a hash to store the politician's name and the list of
# voters.