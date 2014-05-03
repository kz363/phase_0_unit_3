// U3.W8-9:


// I worked on this challenge with Ken Sin and Jake Huhn.

// 2. Pseudocode

// Create a Grocery and GroceryList function first that lets us create new Grocery and GroceryList objects.
// The Grocery function accepts name, quantity, and department. By default, Grocery bought = false.
//

// Create a class, Grocery, that is initialized by name, quantity, bought variable (boolean)
// Create a class, GroceryList, that takes any number of groceries and initializes an array
// with the groceries.
// GroceryList#add_grocery - takes a grocery and adds it to the array
// GroceryList#remove_grocery - takes a grocery and removes it from the array
// GroceryList#view_list - print out the contents of the array
// print checklist of bought items
// Grocery#check_off - sets the boolean bought to true

// 3. Initial Solution

function Grocery(name, quantity, department) {
  this.name = name;
  this.quantity = quantity;
  this.department = department;
  this.bought = false;
}

function GroceryList(listName) {
  this.listName = listName;
  this.list = [];
  this.addGrocery = function (item) {
    this.list.push(item);
    console.log('Your ' + item.name + ' was added to the list!');
  };
  this.removeGrocery = function (item) {
    var index = this.list.indexOf(item);
    this.list.splice(index,1);
    console.log('Your ' + item.name + ' was removed from the list!');
  };
  this.viewList = function () {
    console.log(this.listName);
    for (var i = 0; i < this.list.length; i++) {
     console.log(this.list[i].quantity + "\t" + this.list[i].name + "\n");
    }
  };
}


// 4. Refactored Solution

function Grocery(name, quantity) {
  this.name = name;
  this.quantity = quantity;
}

function GroceryList(listName) {
  this.listName = listName;
  this.list = [];
  this.addGrocery = function (item) {
    this.list.push(item);
    console.log('Your ' + item.name + ' was added to the list!');
  };
  this.removeGrocery = function (item) {
    var index = this.list.indexOf(item);
    this.list.splice(index,1);
    console.log('Your ' + item.name + ' was removed from the list!');
  };
  this.viewList = function () {
    console.log(this.listName);
    for (var i = 0; i < this.list.length; i++) {
     console.log(this.list[i].quantity + "\t" + this.list[i].name + "\n");
    }
  };
}


// DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

apple = new Grocery("apple", 3, "Fruits");
bacon = new Grocery("bacon", 1, "Meats");
steak = new Grocery("steak", 4, "Meats");
dinner = new GroceryList ('Dinner');
dinner.addGrocery(apple);
dinner.addGrocery(steak);
dinner.addGrocery(bacon);
dinner.removeGrocery(apple);
// dinner.check_off(bacon);
dinner.viewList();
milk = new Grocery("milk", 1, "Dairy");
yogurt = new Grocery("yogurt", 6, "Dairy");
dinner.addGrocery(milk);
dinner.addGrocery(yogurt);
// dinner.view_department("Dairy");
pear = new Grocery("pear", 4, "Fruits");
dinner.addGrocery(pear);
// dinner.check_off(pear)
dinner.viewList();

// 5. Reflection
// This was a good review for Javascript syntax since it's been so long since we've worked with it. We attempted
// to make a HTML site that utilizes this code, but ran into a lot of problems because we overestimated our 
// knowledge of how Javascript interacts with HTML. It was definitely a good attempt though and I feel like 
// we learned from it.