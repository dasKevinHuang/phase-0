// Tally Votes in JavaScript Pairing Challenge.

// Written by Kevin Huang

// I worked on this challenge with: Sharon Claitor
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

//   "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }// 

//   var voteCount = {
//     president: { Louise: 1 },
//     
// voteCount.officerproperty[name] += 1;
//     
//For each name of a voter,
//  And for each name of the office position they voted on,
//    Add 1 to the name property inside of voteCount of the person they voted for within the corresponding officer property in voteCount.

    
// Iterate through vote object, to access name properties, and then access votes given
// Tally votes given by each person
// Add 1 to selected officer for every vote count
// For each officer position in the vote counts
//  Have a placeholder to hold the name of the winning candidate
//   For each candidate name,
//  If the placeholder is empty, assign the current candidate name to it
//  Else, if the current placeholder name's tally is less than the current candidate tally
//  replace the placeholder name with the current name



// __________________________________________
// Initial Solution

// for (var voter in votes) {
//   for (var posName in votes[voter])
//     if (isNaN(voteCount[posName][votes[voter][posName]]))
//       voteCount[posName][votes[voter][posName]] = 1;
//     else
//     voteCount[posName][votes[voter][posName]] += 1;
// }
// for (var posNames in voteCount){
//   var currentWinner = ""
//   for (var voteName in voteCount[posNames]){
//     if (currentWinner == "")
//       currentWinner = voteName
//     else if (voteCount[posNames][currentWinner] < voteCount[posNames][voteName])
//       currentWinner = voteName
//       officers[posNames] = currentWinner
//       }
// }






// __________________________________________
// Refactored Solution

for (var per in votes) {
  for (var title in votes[per]){
    var name = [votes[per][title]];
    isNaN(voteCount[title][name]) ? voteCount[title][name] = 1 : voteCount[title][name] += 1;
  }
}
for (var title in voteCount){
  var currentWinner = "";
  for (var name in voteCount[title]){
    if (voteCount[title][currentWinner] < voteCount[title][name] || currentWinner == ""){
      currentWinner = name;
    }
  officers[title] = currentWinner
  }
}



// __________________________________________
// Reflection


//What did you learn about iterating over nested objects in JavaScript?
//
//  It's very similar to iterating over nested arrays in Ruby - in fact if you use
//  bracket notation, the syntax is almost identical.
//
//  However, since nested objects are not nested arrays, you cannot use array methods
//  when dealing with nested objects. I think this is a reason why it can be a bit
//  harder to work with nested objects in JavaScript.
//
//Were you able to find useful methods to help you with this?
//
//  I noticed in the stackoverflow link in the challenge, there is a recommendation
//  to use hasOwnProperty to ensure that each for in loop only goes through each property.
//  However I found that hasOwnProperty is unnecessary for this challenge, since
//  it's only necessary when there are prototypes that might be iterated over too.
//  Since the objects do not have prototypes, hasOwnProperty checks are not needed.
//
//  One useful method was isNaN, which allowed me to check if there was a number
//  set to the votecount property for specific names.
//  
//  If there was none, I would define the vote count at 1.
//
//What concepts were solidified in the process of working through this challenge?
//
//  For me, working with nested objects was solidified while working through this challenge.
//  I found that nested objects, while they might be very particular in the same way as nested arrays,
//  are fairly straightforward as long as you can handle the layers necessary to access a specific variable.


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)