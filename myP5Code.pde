//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 20;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  rect(fireworkX, 15, 10, 10);
  
  fireworkX = fireworkX + 1;

var x=0;
var y=173;
var eyewidth=35;
var eyeheight=25;
var smiley=220

draw=function() {

noStroke()

background(255,255,255,0);

//body
fill(156, 149, 132)
ellipse(x+1,y+126,200,150)

   //ears
fill(156, 149, 132)
triangle(x+84,y-23,x+80,y-111,x+33,y-67)
triangle(x-33,y-65,x-84,y-112,x-85,y-23) 
 
  //head
fill(156, 149, 132)
ellipse (x,y,180,140)

 
//white
fill(219, 213, 200)
ellipse (x-2,218,70,45) 
 ellipse (x+48,154,50,35)
 ellipse (x-54,154,50,35)
 

  //eye 
fill (184, 162, 118)
  ellipse (x-53,156,40,35)
 ellipse (x+48,156,40,35)
 
 //eye2
 fill (36, 32, 26)
  ellipse (x+48,154,eyewidth,eyeheight)
 ellipse (x-54,154,eyewidth,eyeheight)

//eyewhite
fill(219, 213, 200)
ellipse(x+53,154,8,8)
ellipse(x-57,154,8,8)
 
 //nose
 fill (158, 111, 96)
 triangle (x-28,178,x+22,178,x-2,206)
 ellipse (x-2,179,50,15)

//nostrils
fill(0,0,0)
ellipse(x-18,188,10,5)
ellipse(x+12,188,10,5)

//line
strokeWeight(1)
stroke(0,0,0)
line(x-2,213,x+20,smiley)
line(x-2,213,x-23,smiley)

//line
strokeWeight(30)
stroke(156, 149, 132)
line(x-20,275,x-80,600)
line(x+20,275,x+110,600)

x=x+1;

if(x>200){
x=200;
eyewidth=45;
eyeheight=40;
smiley=smiley-0.6
if(smiley<210){
smiley=210
}
}

eyewidth=eyewidth+0.06

if(eyewidth>45){
eyewidth=45;
}

eyeheight=eyeheight+0.06

if(eyeheight>40){
eyeheight=40
}


};

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
