/*(c)2013 William W Wu youtu.be/zz7cor7WviQ*/
String N="0123456789",
C=" 5ljhf 17e1dcba 9pnkigeca 12e2dc1ba1`_ 6rpmjheca`^ 9ed1c2ba1`_1^1 4troligda_^]Z 7c3ba2`_1^1]2 2vtrolieb_][ZYW 5a4`1_2^1]5 1vtrplhd`][ZXWVT 3^_5^1]3[5 xwuspl 2ZYXWVT2UWZ[]^2] 6Z4[ xwvtrn 3XWVUT2UWXZ[2 8Z6yxwvt 5WVUT1UV1XYZ1 10Z5zyx1w 6VU3V1WX1 11Z5z1y1x 7U3V1W 2qp1on1 4Z5z4 15r1qp1on1m 3Z5{1z3 13s1r1p1onm1l 2Z5{4z1 11t2srqpn1ml2 1Z5 |1{3z 10u2tsqpnmlk2 1Z5 |4{2 8v3u1 2kj3k Z5 1|8 5x2w2 3i2j2 Z5 2}1|9{z1y1x2 4hi2j Z5 3}4|6{1z1y1 5g1hi1 Z5 5~}6|3{1z 6fg1hi Z5 8~1}4|2{ 7efghi Z5 13~}2 8cdefgh Z5 4#&(+- 14acdfgh Z5 2!&(+.:= 12`bdegh Z5 1!&),/;>@A 10_acefh Z5 !&),/<>ACD 9^acefh Z5 1&*-:=@BDEGH 7]`cef 1Z5 3&*.;>ACEGHIK 5Y]`ceg 1[513 3<@BEGHJKMNOQRTVZ^ace 2[54 6DFIJLMOPQSTVX[_ace 2]55 7IKLMOPRSTVXZ]`bd 3]54 8MNOQRSUVXZ]_ac 3^5]31 9PQSTUWXZ]_ac 3^_2^2 4 10TUWXZ]_a 3Z[]^_3^ 12 17SUXY[]^1_3 111!(- 7GJMORUWYZ]1^1_1 31#(.<@CE4GILORTVXZ[]^2 51#).<@CE4FIKNQTVXY[]1^ 71$).=@CE4FHKMQSUWYZ[ 11$*/=ACE2D1EGJMPSUW 8";
float A,a,b,c,D,e,f,g,h,H,k=1000,n,o,s,T,t,u,v=1,w,X,x=12,y,Z,z=36.5;
int B,d,E,F,i,j,J=C.length(),K,l=40,L,O,P,q,Q=1/2>0?1:5,R,S,_;
float I(float[][]m,float i,float j){O=floor(i);K=floor(j);i-=O;j-=K;return G(m,O%l,K%l)*(1-i)*(1-j)+G(m,(O+1)%l,K%l)*i*(1-j)+G(m,O%l,(K+1)%l)*(1-i)*j+G(m,(O+1)%l,(K+1)%l)*i*j;}
float G(float[][]m,float i,float j){return i>=0&&i<l&&j>=0&&j<l?m[floor(i)][floor(j)]:0;}
float[][]m=new float[l][l],p=new float[l][l];
float V(float i,float j){return G(m,i,j)*G(m,ceil(i),j)*G(m,ceil(i),ceil(j))*G(m,i,ceil(j));}
int Y(float n){return n>0?1:n<0?-1:0;}
float U(float n,float r){return Y(n)*max(abs(n)-r,0);}
void M(float a,float b,float c){translate(a,b,c);}
void W(){pushMatrix();}
void r(){popMatrix();}
void setup(){
  for(i=0;i<l;i++)for(j=0;j<l;j++){p[i][j]=random(1);if(E>0){m[i][j]=D;E--;}else if(P<J){if(1/2==0)O=(int)(C.charAt(P));else for(O=0;O<127;O++)if(char(O)==C.charAt(P))break;m[i][j]=D=O==32?0:map(O<58?O+11:O,11,126,0,220);P++;while(P<J&&N.indexOf(""+C.charAt(P))>=0){E=E*10+parseInt(""+C.charAt(P));P++;}}}
  p[0][0]=0;
  size(800,800,P3D);
  frameRate(60);
  noCursor();
}
void draw(){
  if(1/2==0)blendMode(NORMAL);
  smooth(Q>2?Q>5?Q>6?8:4:2:0);
  v=cos(t);
  w=sin(t);
  T++;
  background(127,187,240);
  a=.995;
  s=S>0?F>0?a*s+.015:B>0?a*s-.016:U(s,.003):0;
  a=.92;b=.008;
  x+=X=a*X+v*s*b;
  z+=Z=a*Z+w*s*b;
  if(V(x,z)==0&&_<1){
    if(V(x,z-Z)==0){
      x-=X;X=-.1*Y(X);
    }
    if(V(x-X,z)==0){
      z-=Z;Z=-.1*Y(Z);
    }
    s=U(s,1.5);
  }
  y=max(y-1,I(m,x,z));
  if(S>0){
    A=F>0?.99*A+2.55:U(A,3);
    u=.9*u+.0055*(R-L);
    s=U(s,.01*abs(u));
    t+=u;
    h=V(x+2*v,z+2*w)>0?I(m,x+2*v,z+2*w)-y:0;
    h=atan(h==0?(V(x-2*v,z-2*w)>0?y-I(m,x-2*v,z-2*w):0):h)/2;
    H=.05*h+.95*H;
    camera(10*x-(a=200)-20*v,-y-30+10*H,10*z-a-20*w,10*x-a-50*u*w,-y-26,10*z-a+50*u*v,0,1,0);
    if(z<33||x>27.5||x<9.5){
      if(d<1){
        d=x<20?1:2;
        e=0;
      }
      e++;
    }
    else if(d>0){
      a=x<20?1:2;
      if(a!=d)
        f=e;
      else 
        e=f;
      d=0;
    }
    q=z<20?1:q;
  }
  else{
    a=500;
    i=floor(T/180)%5;
    if(i<1)camera(a*sin(T*.6/k),-350,a*cos(T*.6/k),0,-150,0,0,1,0);
    else if(i<2)camera(240*sin(5+T/k),-70,240*cos(5+T/k),0,-110,0,0,1,0);
    else if(i<3)camera(1.1*k*sin(5+T/k),-600,.6*k*cos(5+T/k),0,-150,0,0,1,0);
    else if(i<4)camera(50*sin(T*3/k),-280,70*cos(T*3/k),0,-260,0,0,1,0);
    else camera(200*sin(8+T*2/k),-600,190*cos(8+T*2/k),0,-150,0,0,1,0);
  }
  perspective(PI/3,1.*width/height,10,k*k);
  directionalLight(a=240,a,a,2,5,1);
  directionalLight(a=k,a,a,-2,5,-3);
  noStroke();
  ambientLight(a=140,a,a);
  for(i=l;i>-l;i--)for(j=l;j>-l;j--){
    g=G(m,i,j);
    if(g>0){
      fill(k,j>33&&i<27.5&&i>9.5?70:100,0);
      W();
      M(i*10-200,0,j*10-200);
      a=x-i;a*=a;
      b=z-j;b*=b;
      a=sqrt(a+b);
      g-=max(5-3*a,0);
      M(0,-g,0);
      box(8,30,8);
      M(0,g*2,0);
      if(Q>2)
        box(8,30,8);
      r();
    }
    if(Q>1){
      W();
      M(i*100,0,j*100);
      g=3*I(p,a=i/6.+l,b=j/6.+l)-2;
      fill(O=200);
      if(g>0)
        box(O,pow(g,.7)*k*.8,O);
      M(i*O,-2*k,j*O);
      g=I(p,a+T/k,b)-.7;
      if(Q>3&&g>0){
        fill(k,50*k*g);
        g=sqrt(g)*2*k;
        box(a=400,g,a);
        M(0,4*k,0);
        if(Q>4)
          box(a,g,a);
      }
      r();
    }
  }
  fill(k);
  textAlign(CENTER);
  W();
  textSize(100);
  scale(.1);
  a=e/(O=60);i=floor(a%1*100);K=floor(a);j=floor(K/O);
  text(e==0?"":(j>0?j+":":"")+(j>0&&K%O<10?"0":"")+K%O+"."+(i<10?"0":"")+i,-200,-1700,1300);
  textSize(S<1?150:l);
  if(S<1)
    text("Press any key to begin",-120,-1520,2*k);
  else if(q<1){
    M(640,-1670,1650);
    rotateY(-PI/2);
    rotateX(PI/4);
    text("Arrow keys to move",0,-140,-100);
    text("1-7 to change quality",0,0);
  }
  r();
  W();
    rotateX(PI/2);
    fill(0,a=20,b=100,120);
    rect(a*=-k,a,b*=k,b);
  r();
  W();
    fill(k,0,0);
    M(10*x-200,a=-y-20+sin(T*.03)*.2,10*z-200);
    scale(.2);
    rotateY(-t-u*10);
    rotateZ(-atan(H)*.4);
    rotateX(sin(T*.02)*.1-u*10);
    W();
      M(a=20,0,0);
      box(a,7,10);
      M(-a,0,b=15);
      rotateY(PI/8);
      rotateX(n=.9*n-PI/100-.08*Y(F-B+R-L));
      box(a,2,10);
    r();
    W();
      M(0,0,-15);
      rotateY(7*PI/8);
      rotateX(o=.9*o-PI/100-.08*Y(F-B-R+L));
      box(a,2,10);
    r();
    if(1/2==0)blendMode(ADD);
    beginShape();
    fill(k,A);
    vertex(b,0,3);
    vertex(b,0,-3);
    fill(k,0);
    vertex(b=-A/3,0,-3);
    vertex(b,0,3);
    endShape();
  r();
}
void keyPressed(){
  c=keyCode;
  L=c==LEFT?1:L;
  R=c==RIGHT?1:R;
  F=c==UP?1:F;
  B=c==DOWN?1:B;
  _=key=='`'?1-_:_;
  O=N.indexOf(key);
  Q=O>0?O:Q;
  S=O<0?1:S;
}
void keyReleased(){
  c=keyCode;
  L=c==LEFT?0:L;
  R=c==RIGHT?0:R;
  F=c==UP?0:F;
  B=c==DOWN?0:B;
}


