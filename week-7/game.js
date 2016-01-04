 // Design Basic Game Solo Challenge
// Author: Kevin Huang
// This is a solo challenge

// Your mission description: Create Rock, Paper, Scissors game.
// Overall mission:
// Have the user guess (Rock, Paper, or Scissors) to win the game against the computer.
// Goals:
// Beat the Computer at Rock, Paper, Scissors
// Characters:
// The Player vs. The Computer
// Objects:
// player - choice property
// computer - choice property
// 
// Functions:
// pickRock
// pickPaper
// pickScissors
// randomPick
//  
// Pseudocode
// Create a two similar objects - 1 for the player, and 1 for the computer, both with a choice and wins property.
// Define a function for when the player picks Rock, such that the choice property for the player given becomes a string for "Rock"
// Define a function for when the player picks Paper, such that the choice property for the player given becomes a string for "Paper"
// Define a function for when the player picks Scissors, such that the choice property for the player given becomes a string for "Scissors"
// Define a function for when the computer randomly picks a choice. The computer will randomly choose a number between 1 & 3.
// The computer's choice will be Rock for 1, Paper for 2, Scissors for 3.
// Define a function that checks the game result.
// If the player's choice and the computer's choice are the same, return a tie.
// If the player's choice beats the computer's choice (Rock beats scissors, Paper beats Rock, Scissors beats paper), then add 1 to wins for the player, return a win.
// Otherwise, the computer wins, and add 1 to wins for the computer and return a loss for the player.
//
//
//
//

// Initial Code
var player = {
	choice: "",
	wins: 0
}
var computer = {
	choice: "",
	wins: 0
}
function pickRock(player){
	player.choice = "Rock"
}
function pickPaper(player){
	player.choice = "Paper"
}
function pickScissors(player){
	player.choice = "Scissors"
}
function randomPick(computer){ 
	var c = Math.floor(Math.random() * 3) + 1;
	if (c == 1)
		computer.choice = "Rock";
	else if (c == 2)
		computer.choice = "Paper";
	else
		computer.choice = "Scissors";
}
function checkGame(player, computer){
	if (player.choice == computer.choice){
		return "Tie";
	}
	else if ((player.choice == "Rock" && computer.choice == "Scissors") || (player.choice == "Paper" && computer.choice == "Rock") || (player.choice == "Scissors" && computer.choice == "Paper")){
		player.wins += 1;
		return "You Win";
	}
	else{
		computer.wins += 1;
		return "You Lost";
	}
}

pickRock(player)
randomPick(computer)
console.log(player.choice)
console.log(computer.choice)
console.log(checkGame(player, computer))
console.log(player.wins)
console.log()

//
// Refactored solution
//


// Create two Player objects - player & computer. For the two characters in this game.

var player = new Player("player");
var computer = new Player("computer");

// Constructor for Player object

function Player(name){
	this.name = name;
	this.choice = "";
	this.wins = 0;
}

// Choice functions -- Modifies choice properties of players/computer

function pickRock(player){
	player.choice = "Rock"
}
function pickPaper(player){
	player.choice = "Paper"
}
function pickScissors(player){
	player.choice = "Scissors"
}

// Play the game using the following function

function playGame(player, computer){
	randomPick(computer);
	displayGame(player, computer);
	checkGame(player, computer);
}


// Randomly picks a choice for the computer

function randomPick(computer){ 
	var c = Math.floor(Math.random()*(3) + 1);
	if (c == 1)
		computer.choice = "Rock";
	else if (c == 2)
		computer.choice = "Paper";
	else
		computer.choice = "Scissors";
}

// Displays game choices from each player

function displayGame(player, computer){
	console.log("You: " + player.choice+ " vs Computer: " + computer.choice)
}
// Checks the game to see who won/lost. Modifies wins counters for the winner and returns a string for the result for the player.

function checkGame(player, computer){
	if (player.choice == computer.choice){
		console.log("Tie");
	}
	else if ((player.choice == "Rock" && computer.choice == "Scissors") || 
			(player.choice == "Paper" && computer.choice == "Rock") || 
			(player.choice == "Scissors" && computer.choice == "Paper")){
		player.wins += 1;
		console.log("You Win");
	}
	else{
		computer.wins += 1;
		console.log("You Lost");
	}
}

// Displays final tally of wins

function displayScore(player, computer){
	console.log("Final Results:")
	console.log("You: " + player.wins);
	console.log("Computer: " + computer.wins);
}

pickRock(player)
playGame(player, computer)
pickPaper(player)
playGame(player, computer)
pickScissors(player)
playGame(player, computer)
pickPaper(player)
playGame(player, computer)
playGame(player, computer)
playGame(player, computer)
playGame(player, computer)
console.log()
displayScore(player,computer)

// Reflection
// What was the most difficult part of this challenge?
//
//	I think the most difficult part of this challenge for me was trying to figure out how detailed I wanted to make the game.
//	I spent a lot of time trying to come up with a version of this game that could live on my blog site on github, but it ended up being a huge time sink.
//	Overall, I think the Rock Paper Scissors game I came up is a fairly solid solution so far. I think if I had more time, I could come up with a solution that could live online using this as a starting point.
//
// What did you learn about creating objects and functions that interact with one another?
//
//	I became more familiar with how easy it is make functions interact with objects within JavaScript. I think knowing this now, making a web interface is very doable by attaching functions to certain buttons and actions.
//
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//
//	I learned about the random function during my initial solution, which is similar to the random number generator in Ruby.
//  Unfortunately I did not find any new ways to refactor my initial solution futher too much, besides rewriting the objects using a constructor, and rewriting a few lines for readability.
//	I also created a single function to encompass most of the small functions to make the game much easier to play with just two functions. The final tally can be found by using displayScore.
//
// How can you access and manipulate properties of objects?
//
//	I accessed the properties of each object by using dot notation. Dot notation was useful since it made writing out the statements to access each property fairly quickly.
//	I tried to keep functions fairly simple and readable.
//
//
//
//
//
//
