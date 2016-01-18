// Review by Kevin Huang

/* Psuedocode:

Create a function to create a new list
Input: A string of items to be made into a grocery list
Output: A grocery list object that with a default value of 1 for each item
Steps: 
  Define an empty object variable called list
  Define an array that splits the words in the given statement into elements
  FOR each element IN the array, define a variable using its name inside of the list object, and set it to the default value of 1.
  RETURN the list object
  

Create a function to add an item with a quantity to the list
Input: A name of an item, a number for the quantity, the list object
Output: Adds the name and quantity to the list object
Steps:
  Access the list object and define the name of the item within the list with the given quantity value.
  
  
Create a function to remove an item from the list
Input: A name of an item on the list, the list object
Output: Removes the item from the list
Steps:
  Delete the item inside the list object
  
Create a function to update quantities for items in your list
Input: A name of an item, a number for the quantity, the list object
Output: Adds the name and quantity to the list object
Steps:
  Access the list object and define the name of the item within the list with the given quantity value.
  
Create a function to print the list (Consider how to make it look nice!)
Input: 
  */

// Initial Solution
/*
function createList(items){
  var list = {};
  var itemsArray = items.split(" ");
  for (var i in itemsArray){
    list[itemsArray[i]] = 1;
  }
  return list;
}

function addItem(item, num, list){
  list[item] = num;
}

function deleteItem(item, list){
  delete list[item];
}

function updateItem(item, num, list){
  list[item] = num;
}

function printList(itemObject){
  for (var key in itemObject){
    console.log(key + ", qty: " + itemObject[key])
}
  */
// Refactored solution  

function createList(items){
  var list = {};
  var itemsArray = items.split(" ");
  for (var i in itemsArray){
    list[itemsArray[i]] = 1;
  }
  return list;
}

function addItem(item, num, list){
  list[item] = num;
}

function deleteItem(item, list){
  delete list[item];
}

function updateItem(item, num, list){
  list[item] = num;
}

function printList(itemObject){
  for (var key in itemObject){
    console.log(key + ", qty: " + itemObject[key])
  }
}
  
  
// test code
  
var list2 = createList("icecream beef bacon")
addItem("kale", 3, list2)
deleteItem("beef", list2)
updateItem("icecream", 5, list2)
printList(list2)

/*
icecream, qty: 5 
bacon, qty: 1 
kale, qty: 3 
*/

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
It solidified the use of objects for me.

What was the most difficult part of this challenge?
It was not difficult. It was just time consuming.

Did an array or object make more sense to use and why?
An object made more sense, since you could store the name in the name of a name-value pair, and the value of the quantity of items in the value itself.
Objects made for the perfect data structure for this challenge.

*/