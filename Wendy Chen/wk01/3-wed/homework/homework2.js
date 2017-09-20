/*Assignment by DT - Replacement for PVT program:
Create a function called groups:
Purpose: To assist in creating groups in the class.

Input 1: # of people in a group
Output 1: list of people in each group, containing the # of people stated in the input.

Input 2: # of groups in the class
Output 2: list of people in each group, dividing the class into # number of groups,
stated in the input.
*/

var myClass = []; //create an array with the list of people in the class

var studentProfile = {};
var noOfGroups;
var noOfStudents;

var studentList = [];

//import names of people into array
function importNames(names){
  studentList = names;
/*
shuffle studentlist here!!!!!
*/
  while(studentList.length!=0){

      if (studentList.indexOf(",") > 0){ // extract a student name from studentList
        studentProfile = {
          name:studentList.substr(0,studentList.indexOf(",")),
          group:0
        }

        myClass.push(studentProfile); // studentProfile into myClass array
        // remove student name and ',' from studentList
        studentList = studentList.slice((studentList.indexOf(",")+1), studentList.length);
      }
  }
}
/*
function groupByNumOfStudents (noOfStudents){
  for (stud = 1; stud <= noOfStudents; stud++){
    console.log(stud);
    for (i=0; i<myClass.length; i++){
      if(myClass[i].group == 0){
        myClass[i].group = stud;
      }
    }
}
}*/

function groupByNumOfGroups (noOfGroups){
  var startGroup = 0;

  //looping through studentsAssigned
      for (i=0; i<myClass.length; i++){
        if(startGroup == noOfGroups){
          startGroup = 0;
        }
        startGroup = startGroup +1;
        for(g=startGroup; g<=noOfGroups; g++){
          if(myClass[i].group == 0){
            myClass[i].group = g;
          }
        }
      }
    }

console.log(myClass);
importNames("Wendy,Jess,Fiona,Ryan,Darren,pauline,");
groupByNumOfGroups(2);
//groupByNumOfStudents(2);
