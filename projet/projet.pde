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
boolean isActivate3;
boolean isActivate4;
boolean isActivate5;
boolean isActivate6;
boolean isActivate7;
boolean isActivate8;
boolean dessineDeuxiemeEllipse;
int m;
boolean dessineTroisiemeEllipse;
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

//Tableau pour stocker les samples
AudioSample[] tabSample = new AudioSample[8];

void setup(){
 minim = new Minim(this);
 size(800,800);
 background(100,100,100);
 //On importe tous les sons du tableau
 for (int i = 0; i < 8; i++){
   tabSample[i] = minim.loadSample("sample" + i + ".mp3");
  
 }
 diameter = 0;
 dessineDeuxiemeEllipse = false;
 dessineTroisiemeEllipse = false;
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
      
// -------------------Key = e -------------------------

if (isActivate4 = true){
  
  }
// -------------------Key = f -------------------------

  if(isActivate5 = true){
    
  }
  
//--------------------Key = g -------------------------
if(isActivate6 == true) {
  
  
  
}


}
  
  


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
       text(texte,150,750);
       
       
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
         
         isActivate4 =true;
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
         
         isActivate5 = true;
         noStroke();
         fill( random(0,255),random(0,255),random(0,255));
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
         
         isActivate6 = true;
         fill(random(0,255),random(0,255),random(0,255));
         
         
         coordXg = random(0,800);
         coordYg = random(0,800);
         beginShape(TRIANGLE_STRIP);
         vertex(coordXg + 30, 75);
         vertex(40, 20);
         vertex(50, 75);
         vertex(60, 20);
         vertex(70, 75);
         vertex(80, 20);
         vertex(90, 75);
         endShape();

         
         
         
       }
       //Lettre h
       else if(keyIndex == 7){
         isActivate7 = true;
         noStroke();
         fill(random(0,255),random(0,255),random(0,255));
        
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
         
         
       }
  }
  
  
  }

void stop() {
  
  //On ferme tous les sample importés
  for (int i = 0; i<8; i++){
  tabSample[i].close();
  }
  
  minim.stop();
  super.stop();
}
