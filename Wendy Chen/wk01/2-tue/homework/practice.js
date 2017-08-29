/** # The even/odd reporter
Write a for loop that will iterate from 0 to 20.
For each iteration, it will check if the current number is even or odd,
and report that to the screen (e.g. "2 is even").
**/

for (i = 0; i <= 20; i++){
  if(i%2 == 0 ){
    console.log(i + " is even");
  }else{
    console.log(i + " is odd");
  }
}

/**
# Multiplication Tables
Write a for loop that will iterate from 0 to 10.
For each iteration of the for loop, it will multiply the number by 9 and log the result
(e.g. "2 * 9 = 18").

Bonus: Use a nested for loop to show the tables for every multiplier from 1 to 10
(100 results total).
**/

for (i=1; i <=10; i++){
  for (x=1; x<=10; x++){
  console.log( i + " * " + x + " = " +(i * x));
  }
}

/**
# Your top choices
Create an array to hold your top choices (colors, presidents, whatever).

For each choice, log to the screen a string like: "My #1 choice is blue."

Bonus: Change it to log "My 1st choice, "My 2nd choice",
"My 3rd choice", picking the right suffix for the number based on what it is
**/

var myColor = ["blue","green","red","black","orange","pink"];
var colorSeq;

  for (i = 0; i < myColor.length; i ++){
    colorSeq = i + 1;
      if (colorSeq == 1){
        console.log("My 1st choice is " + myColor[i]);
      }
      else if(colorSeq == 2){
        console.log("My 2nd choice is " + myColor[i]);
      }
      else if(colorSeq == 3){
        console.log("My 3rd choice is " + myColor[i]);
      }
      else {
        console.log("My "+colorSeq+ "th choice is " + myColor[i]);
      }
  }

//Bonus program: create a money christmas tree with console.log
/*
    $
   $$$
  $$$$$
 $$$$$$$
$$$$$$$$$
*/

var spaceReq;
var lineOutput="";
var numOfStars;
var starOutput="";

  for (i=0; i<5; i++){
    spaceReq = 4 - i; // count no.Of space required before $

      for (x=0; x< spaceReq; x++){
        lineOutput = lineOutput + " "; //store no.of space required before $
      }

    numOfStars = i + 1 + i ; // count no. of $ required

      for (z=0; z< numOfStars; z++){
        starOutput = starOutput + "$"; //store no of $ required
      }

//print each line of christmas tree
    console.log(lineOutput + starOutput);

//reset lineOutput and starOutput
    lineOutput = "";
    starOutput = "";
  }
