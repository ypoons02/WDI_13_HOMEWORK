var catTimerId = null;

var img = document.querySelector('img');

var startButton = document.getElementById("start-button");
var walkButton =  document.getElementById("speed-button");
var stopButton =  document.getElementById("stop-button");
var direction = "right";

var lowerMiddle = (window.innerWidth/2)-30;
var higherMiddle = (window.innerWidth/2)+30;
var currentPosition;

// cat walk one step
var catWalk = function() {

  var currentLeftOffset = parseInt(img.style.left);
  currentPosition = currentLeftOffset;

  if (direction == "right"){
    //walk to right
      if(currentLeftOffset > window.innerWidth) {
        direction = "left";
      }
      else {
        img.style.left = (currentLeftOffset + 10) + 'px';
      }
    }

  if (direction == "left"){
    //walk to right
      if(currentLeftOffset > 0) {
        img.style.left = (currentLeftOffset - 10) + 'px';
      }
      else {
        direction = "right";
      }
    }
}


function startCatWalk() {
  if (catTimerId === null){
    catTimerId = setInterval(catWalk, 100);
  }else{
    alert("Kitty cat is already walking! You can either stop her or ask her to move faster.");
  }
}

function walkFaster() {
  var walkingSpeed = 100* catTimerId;
  catTimerId = setInterval(catWalk, walkingSpeed);
}

function myStopFunction() {
  for (i=1;i<=catTimerId;i++){
    clearInterval(i);
  }
  console.log("clearInterval"+catTimerId);
}

startButton.onclick = function() {
  startCatWalk();
};

walkButton.onclick = function() {
  walkFaster();
};

stopButton.onclick = function() {
  myStopFunction();
};
