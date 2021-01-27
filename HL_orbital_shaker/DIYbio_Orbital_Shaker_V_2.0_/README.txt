                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:2983846
DIYbio Orbital Shaker V 2.0  by ProgressTH is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

UPDATE: The rail system has been improved. If you've downloaded this model before July 4, 2018, make sure to switch out the railing system. It uses M5 hex head bolts & nuts where as the rest of the system uses M3 cross head bolts. 

Simple hot glue holds the hex head bolts in place within the knobs, likewise with the hex nuts in the bars.

You will need to print out (2) rails, (4) knobs, and (2) bars. 

INTRODUCTION

This is version 2.0 of our DIYbio orbital shaker. We'll be adding in more info, videos, and assembly instructions in the near future. 

All the electronics are the same as the original version. So is all the Arduino code. 

The electronics diagram is included above in the images. The Arduino code will be provided below. Check out our prototype here for hints on assembly: https://www.thingiverse.com/thing:2633507

...until we get some more documentation up for this version. 

The SketchUp file is included. It contains both the original prototype and the new version. It also has some designs not included in V 2.0 but you're free to use them/modify them. 


Video of it in action: https://www.youtube.com/watch?v=4-jtV0Y1T68

ARDUINO CODE

Arduino sketch used:

// Simple Stepper Motor Control
//
// by Achim pieters, www.studiopieters.nl
//
//

// Defines pins numbers
const int stepPin = 7;
const int dirPin = 8;

int customDelay,customDelayMapped; // Defines variables

void setup() {
// Sets the two pins as Outputs
pinMode(stepPin,OUTPUT);
pinMode(dirPin,OUTPUT);

digitalWrite(dirPin,HIGH); //Enables the motor to move in a particular direction
}
void loop() {

customDelayMapped = speedUp(); // Gets custom delay values from the custom speedUp function
// Makes pules with custom delay, depending on the Potentiometer, from which the speed of the motor depends
digitalWrite(stepPin, HIGH);
delayMicroseconds(customDelayMapped);
digitalWrite(stepPin, LOW);
delayMicroseconds(customDelayMapped);
}
// Function for reading the Potentiometer
int speedUp() {
int customDelay = analogRead(A0); // Reads the potentiometer
int newCustom = map(customDelay, 0, 1023, 300,4000); // Convrests the read values of the potentiometer from 0 to 1023 into desireded delay values (300 to 4000)
return newCustom;
}

# Print Settings

Printer: ExtraBot 3020
Rafts: No
Supports: Yes
Resolution: Low 
Infill: 20% or higher

Notes: 
It is a big print. With our ExtraBot 3020 the main body took 10 hours to print. The cover and platform took 4 hours each to print.