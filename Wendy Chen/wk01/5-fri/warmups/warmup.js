/**
# The Board

Write a program that creates a string that represents an 8×8 grid,
using new- line characters to separate lines.
At each position of the grid there is either a space or a “#” character.
The characters should form a chess board.
Passing this string to console.log should show something like this:
```
# # # # # # # #
 # # # # # # # #
# # # # # # # #
 # # # # # # # #
```
_bonus_ When you have a program that generates this pattern,
define a variable size = 8 and change the program so that it works for any size,
outputting a grid of the given width and height.
Then, define a variable 'symbol' that generates the board using the specified character instead.
**/
/*
var horizontalLine = [];
drawBoard(4,"Y"); // call function drawBoard (size of grid, symbol on the board)

function drawBoard(gridSize, symbol){
  for (x=0; x<gridSize; x++){ // draw horizontal line
    horizontalLine.push(symbol); // push symbol into horizontal line to form line
  }
  for (i=0; i<gridSize; i++){ // draw vertical lines
    if(i%2==0){ // if line number is even, add extra space at the start of the line and print
      console.log(" "+horizontalLine.join(""));
    }else{
      console.log(horizontalLine.join("")); //if line number is odd, simply print out horizontal line
    }
  }
}

*/
