int contX=0;int contY=0;

void parseFile() {
  BufferedReader reader = createReader("image_512x512.txt");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
     String[] pieces = split(line, ' ');
     for( int i=0; i<3; i++) matrizObjeto[contX][contY+i] = int(pieces[i]); // para generalizar, n colunas
       //matrizObjeto[contX][0] = int(pieces[0]);
       //matrizObjeto[contX][1] = int(pieces[1]);    
       contX++;
    }
    reader.close();
  } catch (IOException e) {
    e.printStackTrace();
  }
} 
