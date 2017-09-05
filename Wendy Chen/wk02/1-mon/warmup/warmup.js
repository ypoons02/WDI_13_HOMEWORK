/*Write a function 'grannyTalk' what takes a question as an argument and returns a string as her response.
If you talk to Granny normally, she'll reply "SPEAK UP SONNY JIM"
If you talk to her in ALL CAPS, she'll reply "NO, NOT SINCE 1945"
The year will be a random year between 1930 and 1950.
If you say "BYE" to her she'll reply "What's that honey, I didn't hear you.."
bonus: write an additional function 'grandpaTalk' that when called, will call
granny for you and interpret her responses incorrectly by swapping vowels randomly
in the words of her responses.
sample output of grandpaTalk:
// NO, NOT SINCE incorrect year // whats that sunny
**/

function grannyTalk(askGranny){
  if(askGranny.toUpperCase()== askGranny && askGranny!= "BYE"){
    var year = Math.floor(Math.random() * (1950 - 1930) + 1930);
    return ("No, NOT SINCE " + year);
  } else if(askGranny == "BYE") {
    return ("What's that honey, I didn't hear you..");
  }
  else {
    return ("SPEAK UP SONNY JIM");
  }
}

function grandpaTalk(askGrandpa){
  var vowels = ["a","e","i","o","u"];
  var vowelIndex = Math.floor(Math.random() * (vowels.length - 0) + 0);

  var returnVowel = vowels[vowelIndex];
  var results = grannyTalk(askGrandpa);

  if(results == results.toUpperCase()){
    return results.replace(/A|E|I|O|U/gi, returnVowel.toUpperCase());
  } else {
    return results.replace(/A|E|I|O|U/gi, returnVowel.toLowerCase());
  }
}
