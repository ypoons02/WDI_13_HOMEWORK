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

var studentList;

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

var studentsAssigned = 0;
var studentIndex = 0;

function groupByNumOfStudents (noOfStudents){
//looping through groups
/*
  for (i=0; i<noOfStudents; i++){
    myClass[studentIndex].group = i;
    studentIndex ++;
  }*/
}

function groupByNumOfGroups (noOfGroups){
  var groups = Math.floor((myClass.length)/noOfGroups);
  //looping through studentsAssigned
  for(g=1; g<=groups; g++){
      for (i=0; i<myClass.length; i++){
        console.log(myClass[i].group);
      //  if(myClass[i].group == 0){
      //    myClass.slice(i, 1, g);
      //  }
      }
    }
}
importNames("Wendy,Jess,Fiona,Ryan,Darren,");
//groupByNumOfStudents(2);
groupByNumOfGroups(2);

//console.log(myClass);
