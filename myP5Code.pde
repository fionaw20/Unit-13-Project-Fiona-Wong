/*
// https://projects.verou.me/css3patterns/

Requirements
[ yes ] At Least One *New* Array
[ yes ] At Least One *New* Loop
[ yes ] At Least One Custom Function

Select ONE Additional Feature to Add  
[ no ] Feature 1 - Include mouseX and mouseY
[ no ] Feature 2 - Include mouseClicked feature 
[ yes ] Feature 3 - Include random() 
[ yes ] Feature 4 - Include a background Image on the Canvas 
[ no ] Feature 5 - Add animation
*/
//🐕🐈🐱🐶

var xPositionsDog = [100];
var yPositionsDog = [0];

var xPositionsCat = [200];
var yPositionsCat = [0];

setup = function() {
  size(980,654); 

 

  

var count = 0;
  while (count<25){
xPositionsDog.push(random(0,980));
  yPositionsDog.push(random(-300,0));
    count++
  }
count = 0;
  while (count<25){
  xPositionsCat.push(random(0,980));
    yPositionsCat.push(random(-300,0));
      count++
    }


  
};

draw = function() {
    background(255,255,255,0);

fill(255,255,255);

  triangle(120,573,114,548,146,576);
  triangle(345,483,329,462,377,482);

triangle(385,359,385,394,405,357);

  triangle(630,480,657,509,651,475);

triangle(923,442,925,414,939,443);

  triangle(845,248,831,264,865,252);
  
  ellipse(608,473,120,25); //word bubble for orange man
  fill(255, 93, 0); 
  textSize(10);
  text("NOOO MY ORANGES!",558,477);

fill(255,255,255);
  ellipse(414,483,158,25); //word bubble for little boy
  fill(148, 148, 148);
  text("Mother, can we adopt this kitty?",345,487);

  fill(255,255,255);
  ellipse(206,578,200,25);
  fill(86, 153, 128); //cyan man
  text("...Why did I decide to come out today?",121,580);

  fill(255,255,255);
  ellipse(885,246,100,25);
  fill(145, 103, 128);
  text("GAH! MY BACK!",847,249);

fill(255,255,255);
  ellipse(397,352,155,25); //yellow lady
  fill(207, 189, 101);
  text("NOT IN THIS WEATHER SON!",329,356);

  fill(255,255,255);
  ellipse(933,448,60,25);
  fill(224, 130, 163);
  text("My dress...",912,450);
  
    noStroke();
    fill(0, 200, 255);

  textSize(30);

drawDogs();
drawCats();
  };





var drawDogs = function(){
  for (var i = 0; i < xPositionsDog.length; i++) {
      text("🐕", xPositionsDog[i], yPositionsDog[i]);
      yPositionsDog[i] += 10;

  if (yPositionsDog[i] > 598){
yPositionsDog[i] = 57;
    
  }

    
  }

  
};
  
 var drawCats = function(){
   for (var i = 0; i < xPositionsCat.length; i++) {
     text("🐈", xPositionsCat[i], yPositionsCat[i]);
     yPositionsCat[i] += 10;

     if (yPositionsCat[i] > 598){
     yPositionsCat[i] = 57;

       }

   }

 };
   

      





 mouseClicked = function(){
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  console.log(myText);
};

void mousePressed(){
  console.log(myText);
  xPositionsCat = 0;
 yPositionsCat = 0;
  xPositionsDog = 0;
  yPositionsDog = 0;
 
};










