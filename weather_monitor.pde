import processing.serial.*;
//Create Serial port
Serial port1;
String S;
int[] m;
void setup()
{
  //Screen size
  size(1000,500);
  m=new int[4];
  //Initialize to BT-COM
  port1=new Serial(this,"COM7",9600);
  textSize(32);
}
void draw()
{
//Clear Screen and Set Black Background
background(0,0,0);
//Enable data read
port1.write(1);
//Wait for sensor data to be available on BT-COM
delay(1000);
//Read data packet
if(port1.available()>1)
{
S=port1.readStringUntil('\n');
port1.clear();
//Extract info from data packet
m[0]=int(S.charAt(0));
m[1]=int(S.charAt(1));
m[2]=int(S.charAt(2));
m[3]=int(S.charAt(3));
//Heading
text("WEATHER STATION LIVE",50,50);
text("LIGHT TEMP HUMID RAIN",50,150);
//Lighting data display
text(m[0]/2.55,50,200);
text("%",170,200);
//Temperature display
text(m[1],250,200);
text("C",300,200);
//Humidity display
text(m[2],450,200);
text("%",500,200);
//Precipitation display
text((255-m[3])/2.55,650,200);
text("%",770,200);
}
}

