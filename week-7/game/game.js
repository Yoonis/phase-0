 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: A game where the user controls a laser pointer with a kitty in the vicinity.
// Goals: Evade the kitty and don't let it touch your laser.
// Characters: Kitty and You (as the Laser Pointer)
// Objects: Kitty and Laser Pointer
// Functions: Initialize positioning, pass positioning property to all objects in the game, bind user's cursor to first game object, have second game object attempt to reach positioning of the first game object at random speeds, and print out a game status to the user.

// Pseudocode: In solution comments

// Create Pos 'class' with a constructor function to initialize the (x, y) coordinates of an object. Set default coordinates to 0.
function Pos(x, y) {
  this.x = x || 0;
  this.y = y || 0;
};

// Create LaserPointer 'class' and pass position property to LaserPointer.
var LaserPointer = function() {
  this.pos = new Pos(50, 0);
// Give the .laser-pointer selector coordinate properties using the .css() jQuery method.
  this.setPos = function(pos) {
    this.pos = pos;
    jQuery(".laser-pointer").css("top", pos.y);
    jQuery(".laser-pointer").css("left", pos.x);
  }
}

// Create Kitty 'class' and pass position property to Kitty. 
var Kitty = function() {
  this.pos = new Pos(0, 0);
// Give kitty a moveTo function that takes laser object as input. 
// This function moves the .kitty CSS element to the current laser position using the jQuery animate method. Here animate is passed 3 arguments.
  this.moveTo = function(laser) {
    var currLaserPos = laser.pos;
    jQuery(".kitty").animate({
      // First: The laser's coordinate properties
      left: laser.pos.x, 
      top: laser.pos.y
    }, 
      // Second: A random speed of movement
      Math.random()*450, 
      // Third: A completion point that checks if the laser position is equal to the current laser position. If yes, have the Game Status DOM element display a message to the user, and set the current laser position to null.
      function complete(){
      if (currLaserPos === laser.pos) {
        jQuery(".status").text("Too slow!");
        currLaserPos = null;
      }
    });
  }
}

// Have the client run this script after the page has loaded
jQuery(document).ready(function(){
  var kitty = new Kitty();
  var laser = new LaserPointer();

  // Use the jQuery .mousemove method and call on the setPos function to bind the laser's positioning to the user's cursor.
  jQuery(".kitty-grid").mousemove(function(event) {
    laser.setPos(new Pos(event.pageX, event.pageY));
    });
  // While user is evading the kitty, the Game Status will display a message to the user at the same delayed interval that the kitty is moving towards the laser coordinates.
  var intervalID = window.setInterval(function(){
    jQuery(".status").text("Pusheen is on the hunt...");
    kitty.moveTo(laser)}, 950);
});

// Reflection:
// What was the most difficult part of this challenge?
// The most difficult part is hard to say because everything was difficult. I wanted a game that wasn't just text-based, so I tried to manipulate DOM elements for the first time using jQuery, CSS, and HTML combined. This MVP was really time consuming.
// 
// What did you learn about creating objects and functions that interact with one another?
// I got more familiar with passing functions as properties in other objects/properties.
// 
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// All the jQuery methods were obviously new. They manipulate DOM elements by referencing CSS selectors in their methods while the CSS classes/selectors are simultaneously used in the HTML file. I also learned that setting a default value is as simple as using the || operand after the non-default value.
// 
// How can you access and manipulate properties of objects?
// You can add or access properties of objects with dot notation like so: myObject.property. You can manipulate a property by changing the object that it's pointing to after you access it.
// 