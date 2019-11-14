// lê o arquivo texto contendo as coordenadas para ligá-las com linhas
// desenho do tipo "ligue os pontos"

int mO= 300000; int nO= 3; // matriz objeto 
color [][] matrizObjeto;

// inicializa matriz objeto, cada linha é uma coordenada
void inicializaMatrizObjeto(){
  parseFile();
}
 //<>// //<>//
// desenha Objeto
void desenhaObjeto(color [][] matriz){
  float R = 0, G = 0, B = 0;
  int cont = 0;
  for(int i=0; i<512; i++) {
    for(int j=0; j<512; j++) {
      for(int k=0; k<nO; k++) { // colunas
        if(k==0) {
          R = matriz[cont][k];
        } else if (k==1) {
          G = matriz[cont][k];
        } else if (k==2) {
          B = matriz[cont][k];
        }
      }
      stroke(R,G,B);
      // Descomentar para escalas de cinza:
      //stroke(R,R,R);
      //stroke(G,G,G);
      //stroke(B,B,B);
      point(j,i);
      cont++;
    }
  }
}

//////////////////////////////////////////////////////////////////////

void setup(){
  size(512,512);
  stroke(255,255,255);
  background(128);
  matrizObjeto = new color [mO][nO];
  inicializaMatrizObjeto();
}

void draw(){
  desenhaObjeto(matrizObjeto);
}
