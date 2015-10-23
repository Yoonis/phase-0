// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Bulk Up

var athletes = [
  {name: "Usain Bolt", event: "200m"},
  {name: "Michael Phelps", event: "Swimming"}
];

function makeWinners(athletes) {
  for (var i = 0; i < athletes.length; i++) {
    athletes[i].win = function() {
      console.log(this.name + " has won " + this['event']);
    }
  }  
}

// Driver code
makeWinners(athletes);
athletes[0].win();


// Jumble your words

var reverse = function(inputString) {
  return inputString.split("").reverse().join("");
}

// Driver code
console.log(reverse("1racecar"));


// 2,4,6,8

var evens = function(arrayNum) {
  return arrayNum if (arrayNum % 2 === 0);
}


// "We built this city"




// Reflection