// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

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


//RELEASE 5: Experiment on your own
$('img').on('mouseenter', function(e) {
	e.preventDefault()
	$(this).attr('src', 'http://assets.inhabitots.com/wp-content/uploads/2013/01/Squirrel-Slam.jpg')
	})
$('img').on('mouseleave', function(e) {
	e.preventDefault()
	$(this).attr('src', 'dbc_logo.png')
	})


$('img').on('mouseenter', function() {$(this).animate({
    width: "show",
    height: "show",
  }, {
    duration: 1000000,
    specialEasing: {
      width: "linear",
      height: "easeOutBounce"
    },
        complete: function() {
      $( this ).after( "<div>Animation complete.</div>" );}})
})


}) // end of the document.ready function: do not remove or write DOM manipulation below this.