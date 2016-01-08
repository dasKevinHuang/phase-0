/*
Gradebook from Names and Scores

Written by Kevin Huang

I worked on this challenge with Todd Seller
This challenge took me 1 hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = new Object();

for(var i = 0; i < students.length; i++) {
  gradebook[students[i]] = new Object();
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function (name, score) {
  return gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
}

function average(intArray){
  var sum = 0;
  for (var i = 0; i < intArray.length; i++){
    sum += intArray[i];
  }
  return (sum / intArray.length);
}




// __________________________________________
// Refactored Solution

var gradebook = new Object();

for(var i = 0; i < students.length; i++) {
  gradebook[students[i]] = new Object();
  gradebook[students[i]].testScores = scores[i];
}

gradebook.addScore = function (name, score) {
  return gradebook[name].testScores.push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
}

function average(intArray){
  var sum = intArray.reduce(function(a, b){return a + b;})
  return (sum / intArray.length);
}






// __________________________________________
// Reflect



//What did you learn about adding functions to objects?
//
//  I learned that adding functions to objects was as simple as defining the value of a property as a function object.
//  I think this challenge really solidified the understanding that functions in JavaScripts are objects too - such that other objects can be defined as function objects.  
//
//How did you iterate over nested arrays in JavaScript?
//
//  We used a for loop to iterate over the nested arrays in JavaScript. For the refactored solution, we figured out a way to do it using the reduce method.
//
//Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//
//  We were able to incorporate the reduce method into our refactored solution. Reduce is fairly simple, though its syntax might seem intimidating at first.
//  Reduce works as such - reduce(function(previousValue, currentValue, currentIndex, array)
//  We used the previousValue and currentValue arguments of the reduce method, and structured as such var sum = intArray.reduce(function(a, b){return a + b;})
//  So that it will iterate over each element of the array, and add it to the previous value, essentially acting like the for loop we had in the initial solution.
//


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)