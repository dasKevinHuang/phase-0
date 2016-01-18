// U3.W9:JQuery


// I worked on this challenge with Alana Hanson
// This challenge took me 1 hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})
$('img').css({'border' : '1px black dashed'})
//RELEASE 2:
  //Add code here to select elements of the DOM
headline = $("h1")
mascot = $(".mascot")

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body > h1').css({'color': 'green', 'border' : '1px solid black', 'visibility' : 'hidden'})
$('.mascot > h1').html('Squirrels')
//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('mouseenter', function(e) {
 e.preventDefault();
 $(this).attr('src', 'http://assets.inhabitots.com/wp-content/uploads/2013/01/Squirrel-Slam.jpg');
 })

$('img').on('mouseleave', function(e) {
 e.preventDefault();
 $(this).attr('src', 'dbc_logo.png');
 })

//RELEASE 5: Experiment on your own


$('.mascot').on('mousedown', function() {
  $('img').animate({'opacity': '0.5', 'width' : '90%', 'border-width' : '10px'})
})

}) // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection

// What is jQuery?
// jQuery is a javascript library.

// What does jQuery do for you?
// It makes it very easy to work within the DOM.

// What did you learn about the DOM while working on this challenge?
// This challenge helped me practice how to access and change elements within the DOM.