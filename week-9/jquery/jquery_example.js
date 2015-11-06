// U3.W9:JQuery

// I worked on this challenge [with: Kevin Mark].

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  body = $('body');
  mascot = $('.mascot');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('#special').css('color', '#666699');
$('#special').css('border', '1px solid black');
$('#special').css('visibility', 'visible');

$('.mascot').children('h1').html('Copperheads');

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').hover(function() {
  $(this).attr('src', 'http://babycopperheadsnake.org/wp-content/uploads/2014/11/baby-copperhead-snake-1.jpg');
  $('img').animate({
    height: "50%",
    width: "50%",
    border: "1px"
  })}, 
  function() {
  $(this).attr('src', 'dbc_logo.png');
  $('img').animate({
    height: "37px",
    width: "220px",
    border: "1px"
  })});

})  // end of the document.ready function: do not remove or write DOM manipulation below this.


/*
// Reflection

What is jQuery?
It's a robust JavaScript library.

What does jQuery do for you?
Its methods allow for manipulation of user input and HTML and CSS elements to make a page interactive.

What did you learn about the DOM while working on this challenge?
Everything is contained within the "window", and DOM elements can be selected or created using jQuery.

*/