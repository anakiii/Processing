int notes[]={262,294,330,349,392,440,494,523};
char note_chars[]={'1','2','3','4','5','6','7','8'};

void setup() {
  Serial.begin(9600);
}

void loop() {
  if(Serial.available()){
    char note=Serial.read();
    for(int i=0; i<8; i++){
      if(note==note_chars[i]){
        beep(i);
        break;
      }
    }   
  }
}

void beep(int noteIndex){
  tone(8, notes[noteIndex], 50);
}

