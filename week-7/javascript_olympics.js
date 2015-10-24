// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Bulk Up
var athletes = [
  {name: "Usain Bolt", event: "200m"},
  {name: "Michael Phelps", event: "Swimming"},
  {name: "Max Iniguez", event: "Sitting on Couch"},
  {name: "Eunice Do", event: "JavaScript"}
];

var declareWinner = function(athletes)
{
  for (var i = 0; i < athletes.length; i++) {
      athletes.win = console.log(athletes[i].name + " has won the " + athletes[i].event + " event!")
  }
}

// Driver Code
declareWinner(athletes);


// Jumble your words
var reverse = function(phrase) {
  return console.log(phrase.split("").reverse().join(""));
}

//Driver Code
reverse("What are we doing?");


// 2,4,6,8
var evensOnly = function(numbers) {
  var justEvens = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 === 0) {
      justEvens.push(numbers[i]);
    }
  }
  return console.log(justEvens);
}

// Driver Code
var numbers = [1, 2, 3, 4, 5, 6];
evensOnly(numbers);


// "We built this city"
function Athlete() {
  this.name = "Michael Phelps";
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!"
};

// Driver Code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// This challenge helped solidify my knowledge of a construction of a hash-like data structure within an array, as I look at it from a Ruby perspective. More importantly, it helped me get familiar with objects and properties, as well as the MDN and W3 school documentation on available Javascript methods.

// What are constructor functions?
// Constructor functions are different from object literal functions in that they rely heavily on the this keyword. Scoping becomes an important factor, more so than it already is. The syntax is also different because properties are set using this = sign instead of a colon. To use a constructor object, a new instance of the object must first be created/instantiated before its function can be called. To use a literal object, simply reference the object when calling the function.

// How are constructors different from Ruby classes (in your research)?
// In terms of inheritance, a Javascript object inherits all the properties of it's constructors prototype. In Ruby, one class can only have one parent class to inherit from. 
// As far as reference to the class object itself, in Ruby there is a self reference, and in JavaScript there is a this reference.
