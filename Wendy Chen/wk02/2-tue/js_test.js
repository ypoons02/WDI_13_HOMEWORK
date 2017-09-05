//JS Variables
//Assign the string "Jack" to a variable called captain

var captain = "Jack";

//Using the captain variable, use string concatenation to form the string
//"Oh Jack, my Jack!", assigning it to a variable named phrase

var phrase = "Oh "+captain+", my "+captain+"!";

//JS Conditionals
//Add these two lines to your JS file:

//var souls = 3;
//var lifeRafts = 2;
//Write an if statement that console.logs "SOS!" if there are more souls than lifeRafts

var souls = 3;
var lifeRafts = 2;

if(souls> lifeRafts){
  console.log("SOS!");
}


//Data Structures - JS Arrays

//Create an array named weekend with just 'Saturday' in it
//Write JS to add 'Sunday' to the end of the weekend array
//Write JS to add 'Friday' to the front of the weekend array
//Write JS to access 'Saturday' in the array and assign to a variable named day
//Write JS to remove 'Friday' from the array

var weekend = ["Saturday"];

weekend.push('Sunday');
weekend.unshift("Friday");

var day = weekend[weekend.indexOf("Saturday")];

weekend.splice(weekend.indexOf("Friday"), 1);


//Data Structures - JS Objects
//Write an object literal named brain having a property of energyLevel with a value of 10

var brain = {energyLevel: 10
}

//Write JS to assign the property of energyLevel to a variable named energy
var energy = brain.energyLevel;

//Write JS to add a dream property to the brain object that holds the string 'electric sheep'

brain.dream = 'electric sheep';

/*

JS Functions

Write a function to return the area of a rectangle (the product of its length and its width)
Invoke the function with 3 and 4 as arguments and save it to a variable

*/
area(3,4);
function area(length, width){
  console.log(length*width);
}

/*
In the following code sample:
var fruits = ['banana', 'apple', 'kiwi'];

var addFruit = function(arr) {
  arr.push('mango');
}

addFruit(fruits);
console.log(fruits);

When fruits gets console logged, it displays ["banana", "apple", "kiwi", "mango"].
Explain in plain english why the global variable fruits gets modified,
when the local variable arr is getting a new fruit added?

answer: the push method modifies the array by adding a value to the array. Hence, the global array is modified with a new value.
*/
