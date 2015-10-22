// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var firstVar = "Whoa I'm already learning JS?";
console.log(firstVar);

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle
var hash = "#";
for (var i = 0; i <= 6; i++) {
  console.log(hash);
  hash = hash.concat("#");
}

//FizzBuzz

for (var i = 1; i <= 100; i++) {
  if (i%15 === 0) {
    console.log("FizzBuzz"); 
  } else if (i%3 === 0) { 
    console.log("Fizz"); 
  } else if (i%5 === 0) { 
    console.log("Buzz"); 
  } else { 
    console.log(i);
  }
}

//Functions 
// Complete the `minimum` exercise: Write a function min that takes two arguments and returns their minimum.

var min = function (x, y) {
  if (x > y) { 
    return y; 
  } else { 
    return x; 
  }
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["Eunice", 23, "cheese", "white wine", "coffee", "ex-band geek"]
