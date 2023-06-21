# TransputerBox
This is the DosBox based TransputerBox

![TransputerBox Front](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_front.jpg)

The interface is based on a LPC dual-core MPU. The Cortex-M4 is doing USB stuff while the Cortex-M0+ is talking to the IMSC012 Transpuer Link Interface. The MCU is also checking the health status of the power supply and the cooling system.

The host-side is based on a modified version of DOSBox. It emulates the IMSB008 or IMSB004 hardware and connets to the TransputerBox via USB.

Software:
  - DOSBox with USB-Bridge, Windows 10, Visual Studio 2019: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/Visual%20Studio)
  - USB-Interface, based on NXP's LPC54114, MCUXPresso IDE v11: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/MCUXpresso)
  - CPLD for the fancy Link-Leds, Lattice M4A5-64/32-10VC, ispLever Classic: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/ispLEVER%20Classic/linkled)
  
Hardware:
  - Module for 4 TRAM's, Eagle Layout Editor: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/TB-4)
  - Backpanel with 7 slots, Eagle Layout Editor: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/BB-7)
  - USB Interface with Power Management, Current Sensor and HP-Display, Eagle Layout Editor: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/UB-1)
  - SIZE-1 TRAM with 128kB SRAM, Eagle Layout Editor: [Link](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/TM-2)    
  
Misc
  - Front Panels, www.schaeffer-ag.de "FRONTPLATTEN DESIGNER": [Link](https://github.com/DigiFennek/TransputerBox/tree/master/Schaeffer%20AG)

![Image](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_back.jpg)

![Image](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_card.jpg)

![Image](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_occam.jpg)

![Image](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_mtest.jpg)

![Image](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_mandelbrot.jpg)

![Image](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_raytracer.jpg)

