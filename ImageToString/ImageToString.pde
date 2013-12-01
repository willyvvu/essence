void setup() {
  PImage track=loadImage("Track.png");
  size(40, 40);
  println(track.pixels);
  image(track, 0, 0);
  loadPixels();
  String data="";
  int contiguous=0;
  boolean dark=false;
  float min=255, c=0;
  //pixels=new int[]{0,0,0,1,1,1,1};
  for (int i = 1; i < pixels.length; i++) {
    if ((c=red(pixels[i]))<min) {
      min=c;
    }
  }
  String previous=toAlpha(red(pixels[0]), min), current="";
  for (int i = 1; i <= pixels.length; i++) {
    contiguous++;
    if (i>=pixels.length||!previous.equals(current=toAlpha(red(pixels[i]), min))) {
      data+=previous;
      if (contiguous>1) {
        data+=contiguous-1;
      }
      contiguous=0;
    }
    previous=current;
  }
  println(data);
  /*for (int i=0;i<128;i++) {
    print((char)i);
  }*/
}
// ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz~`!@#$%^&*()_+-={}|[]:;,./<>?ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ
String A=" !#$%&'()*+,-./:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmnopqrstuvwxyz{|}~";
String toAlpha(float n, float min) {
  int m=n==0?0:(int)map(n, min, 255, 1, A.length()-1);
  return A.charAt(m)+"";
}

