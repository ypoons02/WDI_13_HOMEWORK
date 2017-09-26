
// You are an adventuring archaeologist, and have found some treasure maps!
//There are too many to check individually, so write a function 'treasureFinder'
//that takes an array of arrays as an argument (see sample inputs below)
// and returns an array with the location of the treasure (X) as an array
//representing the X and Y coordinates, for example:
//
 var map1 = [
 ["A","A","A","A","A"],
 ["A","A","A","A","A"],
 ["A","A","X","A","A"],
 ["A","A","A","A","A"],
 ["A","A","A","A","A"]
 ];

 // Some additional maps:

 var map2 = [
 ["A","A","A","A","A"],
 ["A","A","A","A","A"],
 ["A","A","A","A","A"],
 ["A","A","A","A","A"],
 ["A","X","A","A","A"]
 ];

 var map3 = [
 ["A","A","A","A","A"],
 ["A","A","V","A","A"],
 ["A","A","A","V","A"],
 ["v","v","V","v","X"],
 ["A","V","A","A","A"]
 ];

 var map4 = [
 ["A","A","A","A","A"],
 ["A","A","V","A","A"],
 ["A","A","A","V","A"],
 ["v","v","V","v","A"],
 ["X","V","A","A","A"]
 ];


// Sample output:

// treasureFinder(map1) // should return [2, 2];
// You can assume that the size of the treasure map will be the same.

function treasureFinder(map, findChar) {
  var pos = 0;
  var uniqID = 0
  map.forEach(function(element) {
      element.forEach(function(subElement){
        if(subElement === findChar && uniqID ===0){
          var lengthInnerArray = map[0].length
          var rawX = pos /  lengthInnerArray;
          var x = Math.floor(rawX);
          y = pos % lengthInnerArray;
          console.log("["+x+"]["+y+"]");
          uniqID = uniqID + 1;
        }
        pos = pos + 1;
      })
  });
}

treasureFinder(map1,"X");
treasureFinder(map2,"X");
treasureFinder(map3,"X");
treasureFinder(map4,"X");

// Bonus:
//
// Modify your function to accept maps of any size, and to accept a second
//argument for the key to look for. It should also handle non-unique 'key'
//values gracefully.
//
 var holyGrailMap = [
 ["v","v","V","v","S","S"],
 ["v","v","V","v","S","S"],
 ["v","v","V","v","S","S"],
 ["v","v","V","v","S","S"],
 ["v","v","G","v","S","S"],
 ["v","v","H","v","S","S"],
 ["v","v","V","v","S","S"],
 ["A","V","A","A","A","S"]
 ];
//
// //sample outputs:
//
 treasureFinder(holyGrailMap, "G") // should return [4, 2];
 treasureFinder(holyGrailMap, "H") // should return [5, 2];
 treasureFinder(holyGrailMap, "H") // should return [5, 2];
//
 treasureFinder(holyGrailMap, "V") // should return 'that doesnt belong in a museum!';
