// JavaScript Olympics

// I paired with Marshall Sosland on this challenge.

// This challenge took me 1 hours.


// Warm Up

//var sarah = Athlete("sarah hughes", "ladies singles");//

function win (athlete) {
  athlete.win = athlete.name + " won the " + athlete.event + "!";
  console.log(athlete.win)
};

// DRIVER CODE TO TEST

var sarah = {name: "sarah hughes", event: "ladies' singles"};

win(sarah);


// Jumble your words
function reverse(string) {
  var newstring = "";
  for (var i = string.length - 1; i >= 0; i--){
    newstring += string [i];
  }
  return newstring;
}

// DRIVER CODE TO TEST

console.log(reverse("blah"))

// 2,4,6,8
// INITIAL SOLUTION

function evens(array) {
  var newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0)
      newArray.push(array[i]);
  };
  console.log(newArray);
}

// REFACTORED EVENS SOLUTION

function evens(array) {
  return array.filter(function(v){return v % 2 == 0;})
}

// DRIVER CODE FOR EVENS SOLUTION

evens([1, 2, 3, 4, 4, 5, 6, 9, 10])
var arr = [1, 2, 3, 4, 4, 5, 6, 9, 10]
console.log(evens(arr))

// "We built this city"
function Athlete (name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

//Driver code below 
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
console.log(michaelPhelps);


// Reflection by Kevin Huang

//What JavaScript knowledge did you solidify in this challenge?
//
// This challenged helped to solidify my comprehension of how JavaScript works and how similar it is to other languages like C++ and Ruby - as well as its differences.
// I also felt that the constructor 
//
//What are constructor functions?
//
//  Constructor functions are similar to classes in Ruby or Java since it allows you to create an object with certain attributes.
//  Constructors act as an object itself that holds attributes that you pass through it as arguments.
//
//How are constructors different from Ruby classes (in your research)?
//
//  Constructors are different from Ruby classes in that a constructor is is simply an object and nothing more.
//  Whereas, classes in Ruby are more than just objects - they can sore objects as well as methods within the class instance.
//  It is the closest thing in JavaScript to classes since constructors can serve as blueprints for objects - however they stop short of being a class since Ruby classes can go even further by building methods and objects within a class instance together.