#include <Servo.h> // Include the Servo library

Servo myservo; // Create a servo object to control a servo
int pos = 0;    // Variable to store the servo position

void setup() {
  myservo.attach(9); // Attaches the servo on pin 9 to the servo object
  pinMode(2, OUTPUT);
}

void loop() {
  
  for (pos = 0; pos <= 180; pos += 1) {
    myservo.write(pos);
    delay(15);
    }         

  for (pos = 0; pos >= 0; pos -= 1) {
    myservo.write(pos);
    delay(15);         
    digitalWrite(2, HIGH);
    for (pos = 0; pos >= 0; pos -= 1) {
    myservo.write(pos);
    delay(1000);
    digitalWrite(2, LOW);
    for (pos = 0; pos <= 180; pos += 1) {
    myservo.write(pos);
    delay(1000);
    }  
}
}
