float ball_1_x = 100;
float ball_1_y = 0;

int score = 0;
float hitSize = 50;

void setup(){
  size( 800, 600 );
  rectMode( CENTER ); // rysowanie, "od środka"
}

void draw(){
  
  background(0);
  
  if( dist( mouseX, 550, ball_1_x, ball_1_y ) > hitSize/2 ){
    
    fill(255);
    ellipse( mouseX, 550, hitSize, hitSize );
  
    fill(#E80093);
    ellipse( ball_1_x, ball_1_y, 10, 10 );
    
    ball_1_y = ball_1_y + 2; //zwiekszamy pozycje y kulki w każdej klatce
    
    
  }else{
    
    fill( #00E2E8 );
    ellipse( mouseX, 550, hitSize, hitSize );
    
    ball_1_y = 0;
    ball_1_x = random( 10, 700 );
    
    //score = score + 1; // score += 1 lub score++
    score++;
    //println( score );
    
    
  }
  
  if( ball_1_y > height ){
   println( "booo" ); 
  }
  
  textSize( 20 );
  fill( #FFFFFF );
  text( "SCORE: " + score, 650, 30 );
  
  
  
  
  
}
