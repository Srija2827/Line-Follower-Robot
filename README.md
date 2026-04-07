8051 Line Follower Robot

An autonomous line following robot built using the AT89S52 8051 microcontroller and L293D motor driver. The robot detects a predefined path using IR sensors and adjusts motor movement in real time.

Features:
Real time line detection using IR sensors
Direction control including forward left right and stop
Motor control using L293D H bridge driver
Low level control using 8051 Assembly
Compact hardware implementation on perf board

Working Principle:

The robot uses two IR sensors to detect contrast between the line and the background surface.

Both sensors on white move forward
Left sensor on line turn left
Right sensor on line turn right
Both sensors on line stop

The microcontroller continuously reads sensor inputs and controls the motors through the L293D driver.

Components Used:
AT89S52 8051 Microcontroller
L293D Motor Driver IC
IR Sensors two
DC Motors two
7805 Voltage Regulator
Battery 7 to 12 volts
Chassis and wheels
Code

The control logic is implemented in 8051 Assembly and includes

Sensor input processing
Decision making logic
Motor control


<img width="788" height="889" alt="image" src="https://github.com/user-attachments/assets/702ab02d-e10e-4d69-8b47-6705dfd314a0" />

