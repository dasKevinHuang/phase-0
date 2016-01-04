// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var num = 2;
num = num + 2;
console.log(num);
// => 4

//Favorite Food Program (Please run in Chrome Console)
var fave = prompt("What's your favorite food?")
console.log(fave + "? That's my favorite too!")
// => /fave/? That's my favorite too!

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle
var tri = "";
for (var counter = 0; counter < 7; counter += 1){
	tri += "#";
	console.log(tri);
}

// FizzBuzz
for (var counter = 1; counter <= 100; counter += 1){
	if (counter % 3 == 0 && counter % 5 == 0)
		console.log("FizzBuzz")
	else if (counter % 3 == 0)
		console.log("Fizz");
	else if (counter % 5 == 0)
		console.log("Buzz");
	else
		console.log(counter)
}

// Chess Board
var size = 8;
var board = "";
for (var col = 1; col <= size; col += 1){
	for (var counter = 1; counter <= size; counter += 1){
		if (col % 2 != 0 && counter % 2 != 0 || (col % 2 == 0 && counter % 2 == 0))
			board += " ";
		else
			board += "#";
	}
	board += "\n";
}
console.log(board)

/*
 # # # #
# # # # 
 # # # #
# # # # 
 # # # #
# # # # 
 # # # #
# # # # 
*/

// Functions

// Complete the `minimum` exercise.

function min(num1, num2){
	if (num1 < num2)
		return num1;
	else
		return num2;
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {name: "Kevin", age: "23", quirk: "I love Nintendo games"};
console.log(me["quirk"])