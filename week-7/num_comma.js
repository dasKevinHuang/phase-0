// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jeff Schneider.

// Pseudocode
// Input: Number
// Output: A string of a number with commas added
// Steps:
// Declare a function and accept a number as an argument
// Convert the number to a string
// Reverse the string
// For each index, if index is divisible by 3, not 0, and string size is greater than 3, add a comma to the string after the index.
// Reverse the string again
// Return the string


// Initial Solution

function separateComma(num){
  var numString = num.toString()
  var revString = ""
  for (var i = numString.length - 1; i >= 0; i--){
    revString += numString [i];
  }
  var comString = ""
  for (var i = 0; i < revString.length; i++){
       if (i % 3 == 0 && i != 0 && revString.length > 3) {
         comString += "," + revString[i]
       }
       else{
          comString += revString[i]
       }
  }
  var finalString = ""
    for (var i = comString.length - 1; i >= 0; i--){
    finalString += comString [i];
  }
  return finalString
}

// Refactored Solution
function separateComma(num){
  var arrString = num.toString().split("").reverse()
  for (var i = 3; i < arrString.length; i += 4){
    arrString.splice(i,0,",")
  }
  return arrString.reverse().join("")
}



// Your Own Tests (OPTIONAL)
console.log(separateComma(5000000))
console.log(separateComma(5))
console.log(separateComma(50))
console.log(separateComma(5000))

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//
//  It felt very different compared to approaching the problem with Ruby. 
//  Since Javascript is missing a lot of the methods that Ruby has, it was weird at first to transition the problem to JavaScript.
//  I think that's the reason why our initial solution looks so odd. As we became more and more familiar with the way that our logic would work in Javascript, we were able to refactor the solution by quite a lot.
//
// What did you learn about iterating over arrays in JavaScript?
//
//  I learned that it's very similar to Ruby - HOWEVER JavaScript does not have a #map function that will automatically return an array.
//  Also I'm fairly familiar with the way that JavaScript does for loops, since I've dealt with C++ before.
//
// What was different about solving this problem in JavaScript?
//
//  The differences were pretty apparent in JavaScript's limitations - especially when it comes to the differences in methods available to arrays and strings.
//  ALSO one big difference we were not used to was that JavaScript did not automatically return the last line executed - so we had some trouble adjusting to this at first, until we figured it out.
//  
//
// What built-in methods did you find to incorporate in your refactored solution?
//
//  We found that .splice worked really well for our purposes in adding a comma after every 3rd number.
//  It worked really well in tandem with a for loop, since we could control how many times it would activate, depending on how many digits there were.
//
//