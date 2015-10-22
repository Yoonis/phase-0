// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jon Chen.

// Pseudocode

/*
Input: An integer
Output: String with inserted commas
Logic:
Create a function that takes an integer as a parameter
Convert integer to a string 
Reverse string
Slice string into thirds
Combine with commas
Reverse string and join
Return string
*/


// Initial Solution

function separateComma(number){
  var separated = number.toString();
  separated = separated.split("").reverse();
  
  for (var i = 3; i < separated.length; i += 3){
    separated[i] = separated[i].concat(",");
  }
  
  separated = separated.reverse().join("");
  
  return separated;
}


// Refactored Solution

function separateComma(number){
  var separated = number.toString().split("").reverse();
  
  for (var i = 3; i < separated.length; i += 4)
    separated.splice(i, 0, ",");
  
  return separated.reverse().join("");
}


// Your Own Tests (OPTIONAL)
console.log(separateComma(092834759283475));

/*
// Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
The solution logic was pretty similar to my Ruby solution, but it was not fun knowing what I wanted to do and not being able to immediately implement it like I could in Ruby. 

What did you learn about iterating over arrays in JavaScript?
It's essentially the same as iterating over an array in Ruby, but we got more practice with the JS for loop syntax.

What was different about solving this problem in JavaScript?
I was constantly on MDN's JS documentation to learn the syntax for their methods.

What built-in methods did you find to incorporate in your refactored solution?
We found the destructive JS splice method, which modifies content and has the potential to delete elements as well. We opted out of the delete functionality and used splice to permanently insert a comma after every 3rd element, starting from the end of the number.

*/