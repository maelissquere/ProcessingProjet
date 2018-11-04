import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int value = 0;

//Audio
Minim minim;
AudioSample sample;
AudioSample sample2;

boolean sound;
int diameter;
int diameter1;
boolean isActivate3;
boolean isActivate9;
boolean isActivate12;
boolean isActivate13;
boolean isActivate14;
boolean isActivate15;
boolean dessineDeuxiemeTetris;
boolean dessineTroisiemeTetris;
boolean dessineDeuxiemeEllipse;
boolean dessineTroisiemeEllipse;
boolean dessineDeuxiemeTrait;
boolean dessineTroisiemeTrait;
boolean isEnding;

int o;
int d;
int j;
int c;
int m;
int n1;
int n2;
int p;
int p1;
int p2;


float coordX4;
float coordY4;
String texte;
float coordXb;
float coordYb;
float coordXe1;
float coordYe1;
float coordXe2;
float coordYe2;
float coordXe3;
float coordYe3;
float coordXf1;
float coordYf1;
float coordXf2;
float coordYf2;
float coordXf3;
float coordYf3;
float coordXf4;
float coordYf4;
float coordXg;
float coordYg;
float coordXi;
float coordYi; 
float coordXj;
float coordXdepartj;
float coordYdepartj;
float coordXarriveej;
float coordYarriveej;
float coordXk;
float coordYk;
float coordXl;
float coordYl;
float coordXm;
float coordYm;
float coordXn;
float coordYn;
float coordXp2;
float coordYp2;
float coordXp1;
float coordYp1;
String sens;
int positionYo;
PImage tableau;




//Tableau pour stocker les samples
AudioSample[] tabSample = new AudioSample[16];

void setup(){
 minim = new Minim(this);
 size(800,800);
 background(100,100,100);
 //On importe tous les sons du tableau
 for (int i = 0; i < 16; i++){
   tabSample[i] = minim.loadSample("sample" + i + ".mp3");
  
 }
 
 diameter = 0;
 diameter1 = 0;
 dessineDeuxiemeEllipse = false;
 dessineTroisiemeEllipse = false;
 dessineDeuxiemeTetris = false;
 dessineTroisiemeTetris = false;
 dessineDeuxiemeTrait = false;
 dessineTroisiemeTrait = false; 
 positionYo= 0;
 sens = "descend";
 texte = "";
 isEnding = false;
 isActivate15 = false;
 
}


void draw() {

// -------------------- KEY = b -------------------------
     //Pour keyIndex = 1, on augmente le diamètre du cercle
     if (diameter != 0 && diameter <= 200){
     diameter = diameter + 7;
     ellipse(coordXb,coordYb, diameter, diameter);

     }

// ---------------------- KEY = c ----------------------------

     //Deuxième Ellipse
     if (dessineDeuxiemeEllipse == true){
        if(millis() - c > 158){
        dessineDeuxiemeEllipse = false;
        fill( random(0,255),random(0,255),random(0,255));
        ellipse(random(0,600), random(0,600), 10,10);
         }
        else {
        // le temps pas ecoule
        }
      }
      else { 
      // dessineDeuxiemeEllipse est fausse
      }

      //Toisième Ellipse 
      if (dessineTroisiemeEllipse == true){
         if(millis() - c > 450){
         dessineTroisiemeEllipse = false;
         fill( random(0,255),random(0,255),random(0,255));
         ellipse(random(0,600), random(0,600), 10,10);   
         }
         else {
         // le temps pas ecoule
         }
      }
      else { 
      // dessineDeuxiemeEllipse est fausse
      }
  
//---------------------------------Key = d -------------------------


      if (isActivate3 == true){
         if (millis() - d <2161) {
            if (frameCount % 10 == 0) {
            fill(frameCount * 3 % 255, frameCount * 5 % 255,
            frameCount * 7 % 255);
            pushMatrix();
            translate(coordX4, coordY4);
            noStroke();
            rotate(radians(frameCount * 3  % 360));
            rect(0,0, 80, 20);
            popMatrix();    
            }
        }
        else {
        //temps pas écoulé
        }
      }
      

//--------------------Key = j -------------------------

      if(isActivate9 == true){
         if (coordXj <500) {
         coordXj = coordXj + 10;
         fill( random(0,255),random(0,255),random(0,255), 100);
         bezier(coordXdepartj, coordYdepartj, coordXj, 80, 75,coordXj, coordXarriveej, coordYarriveej);
          }
    
          if(millis() - j > 1300) {
             if (coordXj <1000) {
             coordXj = coordXj + 10;
             fill( random(0,255),random(0,255),random(0,255), 100);
             bezier(coordXdepartj, coordYdepartj, coordXj, 80, 75,coordXj, coordXarriveej, coordYarriveej);
             }  
          }
      }


//--------------------Key = m -------------------------

       if(isActivate12 ==  true){
        
          
             if(millis() - m < 1400){
             
             coordXm = random(1,15)*50;
             coordYm = random(1,15)*50;
             strokeWeight(10);
             stroke(random(0,255),random(0,255),random(0,255));
             strokeCap(ROUND);
             noFill();
             beginShape();
             vertex(coordXm + 85, coordYm + 75);
             vertex(coordXm + 130, coordYm + 75);
             endShape();
             
             } 
             else {
               
             }
             
      }


//--------------------Key = n -------------------------

      if(isActivate13 == true){
  
  
        //Deuxième Tetris
        if (dessineDeuxiemeTetris == true){
            if(millis() - n1 > 258){
            dessineDeuxiemeTetris = false;
            coordXn = random(1,15)*50;
            coordYn = random(1,15)*50;
            strokeWeight(5);
            beginShape();
            vertex(coordXn + 40, coordYn+ 40);
            vertex(coordXn + 60, coordYn + 40);
            vertex(coordXn + 60, coordYn + 60);
            vertex(coordXn + 80, coordYn + 60);
            vertex(coordXn + 80, coordYn + 80);
            vertex(coordXn + 40, coordYn + 80);
            endShape(CLOSE);
            }
        }
 

        //Toisième Tetris 
        if (dessineTroisiemeTetris == true){
            if(millis() - n2 > 550){
            dessineTroisiemeTetris = false;
            coordXn = random(1,15)*50;
            coordYn = random(1,15)*50;
            strokeWeight(5);
            beginShape();
            vertex(coordXn + 40, coordYn+ 40);
            vertex(coordXn + 60, coordYn + 40);
            vertex(coordXn + 60, coordYn + 60);
            vertex(coordXn + 80, coordYn + 60);
            vertex(coordXn + 80, coordYn + 80);
            vertex(coordXn + 40, coordYn + 80);
            endShape(CLOSE);
            }
         }
  
      }
//----------------- Key = o ----------------------
 
      if(isActivate14 == true ){
        if(millis() - o < 500){
          if(sens == "descend"){
              if(positionYo > 650) {
              //change de sens
              sens="monte";
               }
               else{
               positionYo = positionYo + 12;
                  }
          }  
          else{
              if(positionYo < 0) {
              sens="descend";
              }
            else {
            positionYo = positionYo - 12;
            }    
          }
         noFill();
         strokeWeight(2);
         stroke(random(0,255), random(0,255), random(0,255));
         ellipse(random(0,700), positionYo,50,50);
        }
      }
      
   //------------------------------Key = p ---------------
   
   if (isActivate15 == true){
     if (millis() - p > 491){
       noStroke();
       fill(255,255,0,50);
       ellipse(coordXp1,coordYp1,100,100);
       
     }
     
     if (millis() - p1 > 960){
       noStroke();
       ellipse(coordXp2,coordYp2,20,20);
       
     }
     
     if (millis() - p2 > 1403){
       noStroke();
       fill(255,255,0,50);
       ellipse(coordXp2,coordYp2,100,100);
     }
   }
   
      

      
      
  
}



// -------------------------------------------
void keyPressed() {
  
  
  // Si l'utilisateur presse une lettre entre a et z
  if (key >= 'a' && key <='z') {
       int keyIndex;
       
       // On associe a à 0, b à 1, c à 2...
       keyIndex = key - 'a';
       
       //On appelle le son associé à la touche
       tabSample[keyIndex].trigger();
       fill(255,255,255);
       textSize(32);
       texte = texte + key;
       text(texte,50,750);
       
       
       //Lettre a
       if(keyIndex ==0){
          noStroke();
          fill(random(0,255) , random(0,255) ,random(0,255));
          rect(random(1,15)*50, random(1,15)*50, 50, 50);
       }
       // Lettre b
       else if (keyIndex == 1){
         diameter =1; 
         noStroke();
         fill(random(0,255),random(0,255),random(0,255));
         ellipse(coordXb, coordYb, diameter, diameter);
         coordXb = random(50,750);
         coordYb = random(50,750);
       }
       //Lettre c
       else if (keyIndex == 2){
         noStroke();
          fill( random(0,255),random(0,255),random(0,255));
          ellipse(random(1,15)*50, random(1,15)*50, 10,10);
          c = millis();
          dessineDeuxiemeEllipse = true;
          noStroke();
          dessineTroisiemeEllipse = true;
       }
       //Lettre d
       else if(keyIndex == 3){
         
         d = millis();
         isActivate3 = true;
         coordX4 = random(0,600);
         coordY4 = random(0,600);
         
       }
       //Lettre e
       else if(keyIndex == 4){
 
         fill( random(0,255),random(0,255),random(0,255));
         triangle(coordXe1, coordYe1, coordXe2, coordYe2, coordXe3, coordYe3 );
         coordXe1 = random(1,15)*50;
         coordYe1 = random(1,15)*50;
         coordXe2 = random(1,15)*50;
         coordYe2 = random(1,15)*50;
         coordXe3 = random(1,15)*50;
         coordYe3 = random(1,15)*50;
       }
       
       //Lettre f
       else if(keyIndex == 5) {
         
         stroke(0);
         fill( random(0,255),random(0,255),random(0,255), 100);
         bezier(coordXf1, coordYf1, coordXf2, coordYf2, coordXf3, coordYf3, coordXf4, coordYf4);
         coordXf1 = random(1,15)*50;
         coordYf1 = random(1,15)*50;
         coordXf2 = random(1,15)*50;
         coordYf2 = random(1,15)*50;
         coordXf3 = random(1,15)*50;
         coordYf3 = random(1,15)*50;
         coordXf4 = random(1,15)*50;
         coordYf4 = random(1,15)*50; 
       }
       //Lettre g
       else if(keyIndex == 6) {
         
         
         fill(random(0,255),random(0,255),random(0,255));
         
         
         coordXg = random(1,15)*50;
         coordYg = random(1,15)*50;
         beginShape(TRIANGLE_STRIP);
         vertex(coordXg + 30, coordYg + 75);
         vertex(coordXg + 40, coordYg + 20);
         vertex(coordXg + 50, coordYg + 75);
         vertex(coordXg + 60, coordYg + 20);
         vertex(coordXg + 70, coordYg + 75);
         vertex(coordXg + 80, coordYg + 20);
         vertex(coordXg + 90, coordYg + 75);
         endShape();
       }
       //Lettre h
       else if(keyIndex == 7){
     
         fill(random(0,255),random(0,255),random(0,255),90);
        
         beginShape();
         vertex(random(1,15)*50, random(1,15)*50);
         vertex(random(1,15)*50, random(1,15)*50);
         vertex(random(1,15)*50, random(1,15)*50);
         vertex(random(1,15)*50, random(1,15)*50);
         vertex(random(1,15)*50, random(1,15)*50);
         vertex(random(1,15)*50, random(1,15)*50);
         endShape(CLOSE);
       }
       
       
       // Lettre i
       else if(keyIndex == 8){
         
         fill(random(0,255),random(0,255),random(0,255));
         coordXi = random(1,15)*50;
         coordYi = random(1,15)*50;
         beginShape(QUADS);
         vertex(coordXi + 30, coordYi + 20);
         vertex(coordXi + 30, coordYi + 75);
         vertex(coordXi + 50, coordYi + 75);
         vertex(coordXi + 50, coordYi + 20);
         vertex(coordXi + 65, coordYi + 20);
         vertex(coordXi + 65, coordYi + 75);
         vertex(coordXi + 85, coordYi + 75);
         vertex(coordXi + 85, coordYi + 20);
         endShape();
         }
       
       
       //Lettre j
         else if (keyIndex == 9){
         j = millis();
         coordXj = 0;
         coordXdepartj =random(1,15)*50;
         coordYdepartj =random(1,15)*50;
         coordXarriveej = random(1,15)*50;
         coordYarriveej = random(1,15)*50;
         isActivate9 = true; 
       }
       
       //Lettre k
         else if(keyIndex == 10){
         fill(random(0,255),random(0,255),random(0,255));
         coordXk = random(1,15)*50;
         coordYk = random(1,15)*50;
       
         beginShape();

         // Exterior part of shape
        vertex(coordXk -100,coordYk -100);
        vertex(coordXk + 100,coordYk -100);
        vertex(coordXk + 100,coordYk + 100);
        vertex(coordXk -100,coordYk + 100);
        vertex(coordXk -100,coordYk -100);

        // Interior part of shape
        beginContour();
        vertex(coordXk -10,coordYk -10);
        vertex(coordXk -10,coordYk + 10);
        vertex(coordXk + 10,coordYk + 10);
        vertex(coordXk + 10,coordYk -10);
        endContour();

        // Finishing off shape
        endShape();

         
       }
       
      //Lettre l 
        else if(keyIndex == 11){

         
         PImage licorne;
         licorne = loadImage("licorne.png");
         image(licorne,random(150,650),random(150,650));
         translate(random(150,650), random(150,650));
         rotate(radians(40));
        
        
      }
      
      //Lettre m
        else if(keyIndex == 12){
       
      
        isActivate12 = true;
        m = millis();
       
      
    }
    
      //Lettre n
        else if(keyIndex == 13){
        coordXn = random(1,15)*50;
        coordYn = random(1,15)*50;
        strokeWeight(5);
        beginShape();
        vertex(coordXn + 40, coordYn+ 40);
        vertex(coordXn + 60, coordYn + 40);
        vertex(coordXn + 60, coordYn + 60);
        vertex(coordXn + 80, coordYn + 60);
        vertex(coordXn + 80, coordYn + 80);
        vertex(coordXn + 40, coordYn + 80);
        endShape(CLOSE);
        isActivate13 = true;
        n1 = millis();
        dessineDeuxiemeTetris = true;
        dessineTroisiemeTetris = true;
    }
    
    
      //Lettre o
        else if (keyIndex == 14){
         isActivate14 = true;
         o = millis();
        }
        
     //Lettre p   
     
       else if (keyIndex ==15){
        isActivate15 = true;
         p = millis();
         p1 = millis();
         p2 = millis();
         coordXp1 = random(1,15)*50;
         coordYp1= random(1,15)*50;
         coordXp2 = random(1,15)*50;
         coordYp2= random(1,15)*50;
         ellipse(coordXp1,coordYp1,20,20);
        
         
       }    
   
 }
 
else if (key == ENTER){
  save(texte+".jpg");
  save("/data/name.jpg");
  background(255, 238, 156);
  
  tableau = loadImage("name.jpg");
  
  image(tableau,200,390,400,400);
  
  textSize(30);
  fill(0, 102, 153);
  text("Voilà le tableau de votre prénom",50,70);
  text(" voulez-vous en faire un autre ?", 100,100);
  fill(0,0,0);
  text("Recommencer", 50,300);
  text("Quitter",600,300);
  
 
 
  isEnding = true;
}
   
   
 
  
}

void mousePressed(){
  
  if(isEnding == true){
    
    if(mouseX<250 && 50<mouseX && 270<mouseY && mouseY<330){
      setup();
      draw();
    
    }
    
    else if(mouseX<700 && 600<mouseX && 270<mouseY && mouseY<330){
      
      stop();
      exit();
    
    }
  }
  
}


void stop() {
  
  //On ferme tous les sample importés
  for (int i = 0; i<16; i++){
  tabSample[i].close();
  }
  
  minim.stop();
  super.stop();
}
