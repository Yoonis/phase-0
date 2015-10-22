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

/*
Intro: I got a better sense of how vastly we've improved from arcane binary to compact code like JS. There are no specific, confusing concepts right now, just JS as a whole.

Ch 1: 
Numbers: Ruby differentiates between integers and floating points. JS only defines the number datatype, so all JS numbers are floating point, even if there's no visible decimal.

Arithmetic: Ruby and JS have the same basic math operations, except JS uneven integer division will return the decimal value as expected, whereas Ruby will round up to the nearest whole integer. They both have additional Math methods, such as Math.floor() and Math .sqrt(). JS also has a special number object called NaN, which stands for Not a Number. 

Strings: JS differs in that all string methods are non-destructive. Ruby differs in that it has string interpolation #{}. In both Ruby and JS, special characters can be escaped using the backslash \. Both can print to the console, with Ruby's p, puts, and prints methods, nd JS's console.log() method.

Booleans: In JS, the following all evaluate to true: any number besides 0, any string with a length greater than 0, any defined object, and the boolean object true; The following all evaluate to false: undefined objects, null, the number objects 0 and NaN, any string with a length of 0, and the boolean object false.
In Ruby, EVERYTHING is true except for nil and the boolean object false.

Various operators: Logical operators &&, ||, and ! are the same in JS and Ruby. Conditional operators <, >, <=, >=, != are the same as well, except in JS, the triple equals === is used to test for true equality instead of the double equals ==. This is because == will perform a type conversion before the comparison.


Ch 2: 
What is an expression?
An expression is a fragment of code that contains a value.

What is the purpose of semicolons in JavaScript? Are they always required?
Semicolons let JS know that the next line or next expression should be treated as a separate statement. They are not always required, but according to chapter 2, we won't discover these subtleties right now.

What causes a variable to return undefined?
If the variable is empty, the variable holds no value and will return undefined.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
console.log(x) prints x, similar to the Ruby methods p or puts or print. You'd use it anytime you want to see output. 

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
prompt("What's your favorite food?");
console.log("Hey! That's my favorite too!");

Describe while and for loops.
While and for loops are the only 2 loops available to JS. While loops execute until a conditional statement evaluates to false. 
For loops execute a function a set number of times, or until a specified condition is met.

What other similarities or differences between Ruby and JavaScript did you notice in this section?
A big difference is returns. Ruby has an implicit return at the end of a program, but JS always requires an explicit return statement. One similarity is that both allow for editing of variable values after assignment.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.


Ch 3:
What are the differences between local and global variables in JavaScript?
A local variable has the prefix var while a global variable does not. The scope of a local vs global is the same as in Ruby, so always be mindful to include the var prefix unless you truly intend to create a global variable.

When should you use functions?
A function consists of a variable name, parameter, and body. The parameter is input that is treated as a local variable within the body, and the body contains code to be executed upon a function call. Functions in JS are the only things that create new scope. Since they are the value of their variable name, they can be treated like any other variable value. Function values can be passed into other functions as well.

What is a function declaration?
It's a shorter way of writing:
  var add = function(x) {
    return x + y;
  } 
by declaring the variable name before the function parameter:
  function add(x) {
    return x + y;
  } 
It's important to note that this way actually disrupts the top to bottom flow control of a program because a declared function is elevated to a higher scope, meaning this function can be called by functions that are positioned above it. In an if branch scenario, a declared function should absolutely be avoided.


Ch 4:
What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
value.x will fetch the property value literally named "x".
value[x] will evaluate x and fetch the property value that x represents.

What is a JavaScript object with a name and value property similar to in Ruby?
JS: Math.sqrt()
Ruby: Math.sqrt()


Reflection:
What are the biggest similarities and differences between JavaScript and Ruby?
They are both object oriented, but Ruby more so than JS. 
JS has Properties, while Ruby has Class modules. 
The semicolon and curly bracket syntax of JS makes it less readable and user friendly than Ruby.
The truthiness and falseness of objects are mostly the same, except JS has more exceptions like the NaN object.

Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
Yes, in general it helped to use my existing knowledge of Ruby to understand JS. In particular, the Ruby class Object methods helped me make sense of JS properties. Also, seeing iterator methods like .map written out in JS syntax helped me see how much Ruby was elegantly doing.

How do you feel about diving into JavaScript after reading these chapters?
 I finally understand why people say Ruby is the more intuitive language...
*/