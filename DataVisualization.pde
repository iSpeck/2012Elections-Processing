// Global Variables
Table t1;
Table t2;
int rowCount;
int rowCountT;
int row;
PImage bg;
PImage bgs;

void setup(){
  size (800,750);
  smooth();
  bg = loadImage("greylines.png");
  t1 = new Table("PopVote.tsv");
  rowCount = t1.getRowCount();
  println(rowCount);
  t2 = new Table("PresVote.tsv");
  rowCountT = t2.getRowCount();
  println(rowCountT);
  bgs = loadImage("TitleRe.png");
  background(bgs);
}

  


void draw(){
  
}
  
void keyPressed(){
  background(bg);
  
  
  //x axis *************************
  stroke(10);
  line(50,300,800,300);
  //line y axis********************************************
  stroke(10);
  line(50,65,50,300); 
  

  // Codes for the legends***************
  fill(0);{
   String a ="Popular votes by party";
  text(a, 340, 60);
  String b = "Democratic";
  text(b, 620,60);
  String c = "Republican";
  text(c, 620, 80);
  String e = "Total votes per state";
  text( e,620, 360);
  String f = "Total Presidential Votes Casted";
  text( f, 340,360);}
  
  // Code for Democrats********************
  int distance = 50; 
  for ( int row = 0; row < rowCount; row++){
    String states = t1.getString(row, 0); 
    println(states);
    
    int dem = t1.getInt(row, 1);
    println(dem);
    dem = dem/30000;
    
    String demS = t1.getString(row, 1);
    println(demS);
    
    text(states, distance, 320);
    fill(#0000FF);
    rect(distance,300,20,dem-(dem*2));
    fill(40);
    text(demS,distance,(dem-(dem*2)+290));
    distance = distance + 150;
  }
    
    
    fill (#0000FF);
    rect(600, 50, 10, 10);

    fill (#FF0000);
    rect(600, 70, 10, 10);
    
    fill (#8A2BE2);
    rect(600,350, 10, 10);

  // Code for Republicans
  int distance2 = 100; 
  for ( int row = 0; row < rowCount; row++){
    String states = t1.getString(row, 0); 
    println(states);
    
    int rep = t1.getInt(row,2);
    println(rep);
    rep = rep/30000;
    String repS = t1.getString(row,2);
    println(repS);
    
    text(states, distance2, 0);
    fill(#FF0000);
    rect(distance2,300,20,rep-(rep*2));
    fill(40);
    text(repS,distance2,(rep-(rep*2)+290));
    distance2 = distance2 + 150;}
//********************************************************************************************************************
//This is where I will put the information for the presidential data
// this is how many people voted from these states
 
//X axis 
  stroke (10);
  line(50,600,800,600);
//Y axis
  stroke (10);
  line(50,400,50,600);
//This table represents the total votes casted by each state
  int distance3 = 50;
 for ( int row = 0; row < rowCount; row++){
    String states = t2.getString(row, 0); 
    println(states);
 
 int Pvt = t2.getInt(row,1);
 println(Pvt);
 Pvt = Pvt/60000;
 
 String PvtS = t2.getString( row,1);
 println(PvtS);
    text(states, distance3, 625);
    fill(#8A2BE2);
    rect(distance3,600,20,Pvt-(Pvt*2));
    fill(40);
    text(PvtS,distance3,(Pvt-(Pvt*2)+590));
    distance3 = distance3 + 150;   
  noLoop();
 }}
