/*Print out all the leap years in the last 100 years.

Algorithm of leap year:
The year is evenly divisible by 4;
If the year can be evenly divided by 100, it is NOT a leap year, unless;
The year is also evenly divisible by 400. Then it is a leap year.
*/

//leap years
for (i= 1917; i <= 2017; i++){
  if((i%4 == 0 && i% 100 != 0) || i%400 == 0){
    console.log(i);
  }
}

/*
For numbers between 0 and 200:
a) print out multiples of 7.
b) print out every second odd number.
c) print out all prime numbers. */

var every2ndNum = true;
var primeNumber;

for (i=0; i<=200; i++){
  //multiples of 7
  if(i%7 == 0){
    console.log("multiples of 7: "+i);
  }

  //every second odd number
  if(i%2!=0){
    if(every2ndNum == true){
      console.log("every second odd number: " + i);
      every2ndNum = false;
    }
    else {
      every2ndNum = true;
    }
  }

  //prime numbers
  for(x = 2; x<i; x++){
    if (i%x == 0){
      primeNumber = false;
    }
  }

  if (primeNumber){
    console.log("Prime number: "+i);
  }else {
    primeNumber = true;
  }
}
