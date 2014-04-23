# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Ken Sin
# 2. Kevin Zhou
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to make a list of groceries that I want to buy.
# As a user, I want to be able to add items to the list of groceries.
# As a user, I want to be able to remove items from the list of groceries.
# As a user, I want to be able to view all the contents in my grocery list.
# As a user, I want to be able to check off each grocery item.
 
# Pseudocode
# Create a class, Grocery, that is initialized by name, quantity, bought variable (boolean)
# Create a class, GroceryList, that takes any number of groceries and initializes an array
# with the groceries.
# GroceryList#add_grocery - takes a grocery and adds it to the array
# GroceryList#remove_grocery - takes a grocery and removes it from the array
# GroceryList#view_list - print out the contents of the array
#                         print checklist of bought items
# Grocery#check_off - sets the boolean bought to true


# Your fabulous code goes here....

class Grocery
  attr_accessor :bought
  attr_reader :quantity, :name, :department
    
  def initialize(name, quantity, department)
    @name = name
    @quantity = quantity
    @department = department
    @bought = false
  end
   
end

class GroceryList
  def initialize(*grocery)
    @grocery_list, @list_of_departments = [], []
    grocery.each do |item|
      @grocery_list << item
      @list_of_departments << item.department unless @list_of_departments.include?(item.department)
    end
  end
    
  def add_grocery(item)
    @grocery_list << item
  end

  def remove_grocery(item)
    @grocery_list.delete(item)
  end

  def view_list
    list_groceries
    list_checked_off
  end

  def list_groceries
    puts "//Grocery List//"
    @list_of_departments.each do |department| 
       puts "#{department}:"
       @grocery_list.each {|item| puts "- #{item.quantity} #{item.name}" if item.department == department && item.bought == false}
    end
  end

  def list_checked_off
    puts "//Checked-off Items//"
    @list_of_departments.each do |department| 
       puts "#{department}:"
       @grocery_list.each {|item| puts "X #{item.name}" if item.department == department && item.bought == true}
    end
  end

  def check_off(item)
    item.bought = true
  end

  def view_department(department)
    puts "#{department} department:"
    @grocery_list.each {|item| puts "-#{item.quantity} #{item.name}" if item.department == department}
  end

end


# DRIVER CODE GOES HERE. 
apple = Grocery.new("apple", 3, "Fruits")
bacon = Grocery.new("bacon", 1, "Meats")
steak = Grocery.new("steak", 4, "Meats")
dinner = GroceryList.new(apple, bacon)
dinner.add_grocery(steak)
dinner.remove_grocery(apple)
dinner.check_off(bacon)
dinner.view_list
milk = Grocery.new("milk", 1, "Dairy")
yogurt = Grocery.new("yogurt", 6, "Dairy")
dinner.add_grocery(milk)
dinner.add_grocery(yogurt)
dinner.view_department("Dairy")
pear = Grocery.new("pear", 4, "Fruits")
dinner.add_grocery(pear)
dinner.check_off(pear)
dinner.view_list

# Reflection
# I went through this challenge pretty quickly with Ken. Emily decided to give us some more challenging user 
# stories, which were easy at first, but she played the role of a picky user and made it harder with more 
# stories. It got to a point where it would've been better to switch from using an array to using a hash, but 
# we decided to keep sticking with arrays. In the end, I think it would've been a lot simpler to use a hash 
# so I guess my takeaway is to realize when it's time to stop being stubborn and just rewrite your code.