# TransputerBox
This is the DosBox based TransputerBox

![TransputerBox Front](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_front.jpg)

The interface is based on a LPC dual-core MPU. The Cortex-M4 is doing USB stuff while the Cortex-M0+ is talking to the IMSC012 Transpuer Link Interface. The MCU is also checking the health status of the power supply and the cooling system.

The host-side is based on a modified version of DOSBox. It emulates the IMSB008 or IMSB004 hardware and connets to the TransputerBox via USB.

Software:
  - DOSBox with USB-Bridge: [DOSBox](https://github.com/DigiFennek/TransputerBox/tree/master/Visual%20Studio)
  - USB-Interface: [Interface](https://github.com/DigiFennek/TransputerBox/tree/master/MCUXpresso)
  - CPLD for the fancy Link-Leds: [Interface](https://github.com/DigiFennek/TransputerBox/tree/master/ispLEVER%20Classic/linkled)
  
Hardware:
  - Module with 4 TRAM's: [Module](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/TB-4)
  - Backpanel with 7 slots: [Backbpanel](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/BB-7)
  - USB Interface: [Interface](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/UB-1)
  - SIZE-1 TRAM with 128kB SRAM: [TRAM](https://github.com/DigiFennek/TransputerBox/tree/master/Eagle/TM-2)    

![Transputerbox Back](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_back.jpg)

![TransputerBox Card](https://github.com/DigiFennek/TransputerBox/blob/master/Images/transputerbox_card.jpg)
