# Neuton.AI Gesture Based Remote Control Device on 8-bit AVR128DB48

- [Overview](#overview)
- [Hardware Used](#hw-used)
- [Hardware Setup](#hw-setup)
- [Setup Software Environment](#setup-sw-env)

## Overview <div id='overview'/>

This project demonstrates a gesture based remote control device using [__AVR128DB48 Curiosity Nano Kit__](https://www.microchip.com/en-us/development-tool/ev35l43a) and [__TDK ICM-42688-P__](https://www.mikroe.com/6dof-imu-14-click) IMU Sensor. The AVR Curiosity Nano development kit could be connected to the PC via Serial Port and using gestures the user can control media stream or slides of the presentation. Based on accelerometer and gyroscope data the Neuton.AI model could recognize __7 classes__ of gestures: Swipe Right, Swipe Left, Double Tap(Shake), Rotation Clockwise and Counter clockwise, No Gestures(IDLE) and Unknown Gesture.

## Hardware Used <div id='hw-used'/>

[__AVR128DB48 Curiosity Nano Kit__](https://www.microchip.com/en-us/development-tool/ev35l43a)

The AVR128DB48 Curiosity Nano Evaluation Kit is a hardware platform to evaluate microcontrollers in the AVR® DB Family. Supported by both MPLAB® X IDE and Atmel Studio 7, the board provides easy access to the features of the AVR128DB48.
The Curiosity Nano series of evaluation boards include an on-board debugger, no external tools are necessary to program and debug the AVR128DB48.

![avr128db48-cnano-kit-img](resources/avr128db48-cnano-kit.webp)

[__Curiosity Nano Base For Click Boards™__](https://www.microchip.com/en-us/development-tool/AC164162)

The Microchip Curiosity Nano Base for Click boards™ evaluation kit is a hardware extension platform to ease the connection between Curiosity Nano kits and extension boards like the mikroBUS Click modules and Xplained Pro extension boards.

![cnano-click-board-img](resources/cnano-click-board.webp)

[__6DOF IMU 14 Click__](https://www.mikroe.com/6dof-imu-14-click)

6DOF IMU 14 Click is a compact add-on board that contains a 6-axis MEMS motion tracking device combining a 3-axis gyroscope and a 3-axis accelerometer. This board features the ICM-42688-P, high precision 6-axis MEMS motion tracking device, from TDK InvenSense.

![6dof-imu-14-click-img](resources/6dof-imu-14-click.jpg)

## Hardware Setup <div id='hw-setup'/>

Connecting a Curiosity Nano microcontroller kit to Curiosity Nano Base for Click boards can be done in
several ways. The most practical way is to solder sockets to the base board, and headers to the Curiosity
Nano microcontroller kit. It is also possible to skip the header and socket, and solder the Curiosity Nano
microcontroller kit directly to the base board. 

Connect 6DOF IMU 14 Click add-on board into __mikroBUS Socket 1__. The complete setup of the dev kit should be exactly the same as the following figure:

![cnano-hw-setup-img](resources/cnano-hw-setup.jpg)

## Setup Software Environment <div id='setup-sw-env'/>

To set this project up, you will need to install the following software:
- MPLAB® X IDE (https://microchip.com/mplab/mplab-x-ide)
- MPLAB® XC8 compiler (https://microchip.com/mplab/compilers)
- [**Optional**] TeraTerm Terminal (https://teratermproject.github.io/index-en.html)

## Setup firmware project <div id='setup-fw-proj'/>

1. Clone this repository: https://github.com/Neuton-tinyML/neuton-avr128db48-remotecontrol
2. In the MPLAB® X IDE, right-click on `Projects` view and choose `Open Project...`

![fw-proj-open-img](resources/fw-proj-open.jpg)

3. Browse to the repository directory `./neuton-avr128db48-remotecontrol` and select `neuton-avr128db48-remote-ctrl.X` project, and click `Open Project`

![fw-proj-open-2-img](resources/fw-proj-open-2.jpg)

4. Now you should be able to see this project in `Projects` view tab

![fw-proj-opened-img](resources/fw-proj-opened.jpg)

5. To build firmware click `Build Project` button in the toolbar, and you should see a message about the successful build in `Output` terminal:

![fw-proj-build-img](resources/fw-proj-build.jpg)
 
 6. To Program device, plug the Curiosity Nano into your PC via USB and click `Make and Program Device` button in the toolbar:

 ![fw-proj-program-img](resources/fw-proj-program.jpg)

 7. Explore the project and Neuton.AI model capabilities!

## How the project works <div id='how-works'/>

 The project has UART logs and you can open the Serial Port to see them. The Serial Port(USART) has the following configuration:

```
Baudrate:       115200
Data:           8-bit
Parity:         none
Stop bits:      1-bit
Flow control:   none
```

Once the device is up and running, in the serial port terminal you should see similar messages:

```
===== Neuton.AI AVR128DB48 Gestures Recognition Demo =====
Neuton Version: 4.0.1
Looking for user gestures...
```