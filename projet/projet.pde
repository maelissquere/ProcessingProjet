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

int o;
int m;

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
String sens;
int positionYo;



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
        if(millis() - m > 158){
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
         if(millis() - m > 450){
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
         if (millis() - m <2161) {
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
         fill( random(0,255),random(0,255),random(0,255), 10);
         bezier(coordXdepartj, coordYdepartj, coordXj, 80, 75,coordXj, coordXarriveej, coordYarriveej);
          }
    
          if(millis() - m > 1300) {
             if (coordXj <1000) {
             coordXj = coordXj + 10;
             fill( random(0,255),random(0,255),random(0,255), 10);
             bezier(coordXdepartj, coordYdepartj, coordXj, 80, 75,coordXj, coordXarriveej, coordYarriveej);
             }  
          }
      }


//--------------------Key = m -------------------------

       if(isActivate12 ==  true){
        
          
             if(millis() - m > 500){
             
             coordXm = random(0,800);
             coordYm = random(0,800);
             strokeWeight(10);
             stroke(random(0,255),random(0,255),random(0,255));
             strokeCap(ROUND);
             noFill();
             beginShape();
             vertex(coordXm + 85, coordYm + 75);
             vertex(coordXm + 130, coordYm + 75);
             endShape();
             
             } 
             
      }


//--------------------Key = n -------------------------

      if(isActivate13 == true){
  
  
        //Deuxième Tetris
        if (dessineDeuxiemeTetris == true){
            if(millis() - m > 258){
            dessineDeuxiemeTetris = false;
            coordXn = random(0,800);
            coordYn = random(0,800);
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
            if(millis() - m > 550){
            dessineTroisiemeTetris = false;
            coordXn = random(0,800);
            coordYn = random(0,800);
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
          rect(random(0,800), random(0,800), 50, 50);
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
          ellipse(random(0,800), random(0,800), 10,10);
          m = millis();
          dessineDeuxiemeEllipse = true;
          noStroke();
          dessineTroisiemeEllipse = true;
       }
       //Lettre d
       else if(keyIndex == 3){
         
         m = millis();
         isActivate3 = true;
         coordX4 = random(0,600);
         coordY4 = random(0,600);
         
       }
       //Lettre e
       else if(keyIndex == 4){
         
         
         noStroke();
         fill( random(0,255),random(0,255),random(0,255));
         triangle(coordXe1, coordYe1, coordXe2, coordYe2, coordXe3, coordYe3 );
         coordXe1 = random(10,790);
         coordYe1 = random(10,790);
         coordXe2 = random(10,790);
         coordYe2 = random(10,790);
         coordXe3 = random(10,790);
         coordYe3 = random(10,790);
       }
       
       //Lettre f
       else if(keyIndex == 5) {
         
         
         noStroke();
         fill( random(0,255),random(0,255),random(0,255), 70);
         bezier(coordXf1, coordYf1, coordXf2, coordYf2, coordXf3, coordYf3, coordXf4, coordYf4);
         coordXf1 = random(0,790);
         coordYf1 = random(0,790);
         coordXf2 = random(0,790);
         coordYf2 = random(0,790);
         coordXf3 = random(0,790);
         coordYf3 = random(0,790);
         coordXf4 = random(0,790);
         coordYf4 = random(0,790); 
       }
       //Lettre g
       else if(keyIndex == 6) {
         
         
         fill(random(0,255),random(0,255),random(0,255));
         
         
         coordXg = random(0,800);
         coordYg = random(0,800);
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
         
         noStroke();
         fill(random(0,255),random(0,255),random(0,255),90);
        
         beginShape();
         vertex(random(10,800), random(10,800));
         vertex(random(10,800), random(10,800));
         vertex(random(10,800), random(10,800));
         vertex(random(10,800), random(10,800));
         vertex(random(10,800), random(10,800));
         vertex(random(10,800), random(10,800));
         endShape(CLOSE);
       }
       
       
       // Lettre i
       else if(keyIndex == 8){
         
         fill(random(0,255),random(0,255),random(0,255));
         coordXi = random(0,800);
         coordYi = random(0,800);
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
         m = millis();
         coordXj = 0;
         coordXdepartj =random(0,800);
         coordYdepartj =random(0,800);
         coordXarriveej = random(0,800);
         coordYarriveej = random(0,800);
         isActivate9 = true; 
       }
       
       //Lettre k
         else if(keyIndex == 10){
         fill(random(0,255),random(0,255),random(0,255));
         coordXk = random(0,800);
         coordYk = random(0,800);
       
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
       
      //Lettre l A CHANGER
        else if(keyIndex == 11){
        fill(random(0,255),random(0,255),random(0,255));
        coordXl = random(0,800);
        coordYl = random(0,800);
       
        beginShape(TRIANGLES);
        vertex(coordXl + 30, coordYl +  55);
        vertex(coordXl + 40, coordYl + 20);
        vertex(coordXl + 50, coordYl + 75);
        vertex(coordXl + 60, coordYl + 40);
        vertex(coordXl + 70, coordYl + 75);
        vertex(coordXl + 80, coordYl + 20);
        endShape();
        
      }
      
      //Lettre m
        else if(keyIndex == 12){
       
      
        isActivate12 = true;
        m = millis();
       
      
    }
    
      //Lettre n
        else if(keyIndex == 13){
        coordXn = random(0,800);
        coordYn = random(0,800);
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
        m = millis();
        dessineDeuxiemeTetris = true;
        dessineTroisiemeTetris = true;
    }
    
    
      //Lettre o
        else if (keyIndex == 14){
         isActivate14 = true;
         o = millis();
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
