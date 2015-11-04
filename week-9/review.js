/*
//JavaScript Grocery List

// User Stories
A) Create a new list

B) Add an item with a quantity to the list

C) Remove an item from the list

D) Update quantities for items in your list

E) Print the list in nice format

F) Return the list


// Pseudocode
A) Construct a new grocery list object.

B) Create a list prototype function that takes an "item" property and "quantity" value as arguments, and assigns them to the list object.

C) Create a list prototype function that takes "item" as input and deletes it from the list object.

D) Create a list prototype function that takes item and quantity as input. 
IF the list object already contains the item property
  Set item quantity value to user's quantity value. 
ELSE 
  Throw an error stating that the item does not currently exist in the list.

E) FOR loop through list object and print to console.

F) Create a list prototype function that returns the list object.

*/


// Initial Solution
function GroceryList() {}

GroceryList.prototype.addItem = function (item, quantity) {
  this[item] = quantity;
  console.log(quantity + " of " + item + " has been added.");
}

GroceryList.prototype.removeItem = function (item) {
  delete this[item];
  console.log(item + " has been removed from the list.");
}

GroceryList.prototype.updateQuantity = function (item, quantity) {
  if (this.hasOwnProperty(item)) {
    this[item] = quantity;
    console.log("The amount of " + item + " is now updated to " + quantity + ".");
  } else {
    throw "Unable to update! This list does not contain any " + item + ". Please add it first.";
  }
}

GroceryList.prototype.print = function () {
  console.log("This list contains:");
  for (var item in this) {
    if (typeof this[item] != 'function') {
      console.log("- " + this[item] + " of " + item);
    }
  }
}

GroceryList.prototype.getList = function () {
  var list = {};
  for (var item in this) {
    if (typeof this[item] != 'function') {
      list[item] = this[item];
    }
  }
  return list;
}

// Driver Code
var list = new GroceryList();

list.addItem("greek yogurt", 2);
list.addItem("honey", 1);
list.addItem("granola", 1);
list.addItem("avocado", 3);
list.addItem("Cinnamon Toast Crunch", 1);
list.addItem("milk", 1);
list.addItem("strawberries", 1);

list.removeItem("granola");

list.updateQuantity("honey", 2);

// Error handling allows the remaining program to run even if an exception is encountered.
try {
  list.updateQuantity("granola", 2)
}
catch(errorMsg) {
  console.log(errorMsg)
}

list.print();

console.log(list.getList());


// Refactored Solution

function GroceryList() {
  this.list = {};
}

GroceryList.prototype.addItem = function (item, quantity) {
  this.list[item] = quantity;
  console.log(quantity + " of " + item + " has been added.");
}

GroceryList.prototype.removeItem = function (item) {
  delete this.list[item];
  console.log(item + " has been removed from the list.");
}

GroceryList.prototype.updateQuantity = function (item, quantity) {
  if (this.list.hasOwnProperty(item)) {
    this.list[item] = quantity;
    console.log("The amount of " + item + " is now updated to " + quantity + ".");
  } else {
    throw "Unable to update! This list does not contain any " + item + ". Please add it first.";
  }
}

GroceryList.prototype.print = function () {
  console.log("This list contains:");
  for (var item in this.list) {
    console.log("- " + this.list[item] + " of " + item);
  }
}

GroceryList.prototype.getList = function () {
  return this.list;
}


/*
// Reflect

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
Constructor functions, prototypes, data types, error handling, and property manipulation.

What was the most difficult part of this challenge?
I forgot about the prototype of an object, making it extremely difficult to create functions to manipulate new instances of the object.

Did an array or object make more sense to use and why?
Objects made more sense simply because we're dealing with 2 pieces of information per grocery list item (item and quantity).

*/
