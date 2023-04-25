Button b1;
Workspace w;
import drop.*;
SDrop drop;


PFont h1;
PFont h2;
PFont body;
PFont hover;

color[] accents = {#90D8BE, #587E70};
color[] lights = {#E8E8E8, #DEDEDE};
color[] meds = {#ADADAD, #868686};
color[] darks = {#676767, #434343};

void setup(){
  //body = loadFont("IBMPlexMono-Text.otf");
  //hover = loadFont("IBMPlexMono-TextItalic.otf");
  size(1500, 700);
  w = new Workspace();
  b1 = new Button(width, height/2, 50, 50);
  b1.content = "Run BFS";
  b1.style(darks[0], lights[1]);
  b1.hoverStyle(accents[0], darks[1]);
}

void draw(){
  //fill(0);
  //rect(0, 0, width, height);
  //noStroke();
  //fill(lights[1]);
  //b1.hover(mouseX,mouseY);
  //b1.display();
  
   //n1.createNode();
   //n1.dragNode();
   
   //n2.createNode();
   //n2.dragNode();
   
   //overlaps();
   
   w.work();
   w.startScreen();
}

//void overlaps(){
//  boolean notOverlapping = !n1.overlap(n2);
//  if (notOverlapping) {
//    println("The circles are not overlapping");
//  } else {
//    println("The circles are overlapping");
//  }
//}

void mouseClicked(){
  if (w.upload.intersect(mouseX, mouseY)){
    w.startWork();
  }
}

void dropEvent(DropEvent theDropEvent) {
  if (theDropEvent.isFile() && w.fileDrop.intersect(mouseX, mouseY)) {
    File myFile = theDropEvent.file();
    println("\nisDirectory ? "+myFile.isDirectory()+"  /  isFile ? "+myFile.isFile());
  }
}