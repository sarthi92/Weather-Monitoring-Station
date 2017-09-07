#include<dht11.h>
//4 byte data packet
char buf[4];
//dht11 object
dht11 D;
void setup() 
{
//Attach dht11-data pin to digital pin 2
pinMode(2,INPUT);
D.attach(2);

//Begin serial BT-COM with 9600 baud rate
Serial.begin(9600);
}
void loop() 
{
}
void serialEvent()
{
//Read BT-COM data
if(Serial.available()&&Serial.read()==1)
{
  Serial.flush();
  //Ambient Light Sensing
  buf[0]=char(map(analogRead(0),0,1023,0,255));
  
  //Temperature & Humidity Sensing
  D.read();
  buf[1]=char(D.temperature);
  buf[2]=char(D.humidity);
  
  //Precipitation Sensing
  buf[3]=char(map(analogRead(2),0,1023,0,255));
  
  //Send data to BT-COM
  Serial.write(buf,4);
  Serial.write('\n');
}
}
