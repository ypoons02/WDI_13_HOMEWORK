function palindromes(input){

var lengthOfWord = input.length;
var inputString = input.split("");
var isPalindromes = false;

  for(i=0; i<input.length; i++){
    var charFromLeft = inputString[i];
    var charFromRight = inputString[input.length-i-1];

    if (charFromLeft === charFromRight){
      isPalindromes = true;
    }
    else{
      isPalindromes = false;
      break;
    }
  }

  console.log(isPalindromes);
}
