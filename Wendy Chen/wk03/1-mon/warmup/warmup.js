/*Time to fool some archaeologists
You are a villain trying to trap an adventuring archaeologist.
Write a function 'makeFakeMap' that takes two numbers as arguments and
returns an array of arrays to represent a map.
It should be filled with the 'A' character,
except for one, which should be an uppercase X(as below).
The position of X should be determined randomly.
makeFakeMap(5, 5);

// Sample outputs:
[
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","X","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"]
];

makeFakeMap(5, 5);
[
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","A","A","X"],
["A","A","A","A","A"]
];

makeFakeMap(5, 5);
[
["A","A","A","A","A"],
["A","A","A","X","A"],
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"]
];
*/

var char = "A";
var map = [];

makeFakeMap(5,5); // call makeFakeMap to create map with lon and lat defined

function makeFakeMap (long,lat){
  var lon = char.repeat(long);//e.g. "55555"
  for(i=0;i<lat;i++){
    var lonArr = lon.split("");//e.g. "5","5","5","5","5"
    map[i] = lonArr; // create array in the map array
  }
  setTrap(long,lat); // call setTrap
  console.log(map); // print map
}

function setTrap(long,lat){
  var longTrap = Math.floor(Math.random() * long); // get random value for long
  var latTrap = Math.floor(Math.random() * lat); // get random value for lat
  map[longTrap][latTrap] = "X"; // place the "X" in the map
}
