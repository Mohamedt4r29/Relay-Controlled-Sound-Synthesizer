# Relay-Controlled Sound Synthesizer

Welcome to the Relay-Controlled Sound Synthesizer project repository! Our goal is to develop and implement a sound synthesizer utilizing relays on the Nexys A7-50T FPGA board. Instead of generating audio signals directly, our system uses relays linked to Pmod connectors to produce audible sounds by controlling the on and off states of relay switches. Additionally, users can control basic functions like play, pause, and song navigation using push buttons. LEDs and a 7-segment display help visualize the melody.

## Team Members
- Mohamed Abdelreheem: Responsible for constrains file, Github, presentation
- Miguel Ángel Jiménez Duarte: Responsible for top-level code, RTL schematics,
- Yusuf Çetin Onaran: Responsible for hardware design, schematics, Github, physical implementation
- Eirini Vasileiadi: Responsible for presentation, video 

## Theoretical Description

## Hardware Description of Demo Application
The project consists of the Nexys A7-50T board, Arduino Uno R3, 2 pieces of 2 relay modules, logic level converter, breadboard, and jumper cables. The Nexys board provides logic signals to the relay modules via Pmod Ports. Each Pmod Port group (JA, JB,JC, JD) has 2 GND, 2 VCC (3.3V), and 8 logic signals. However, the relay modules require 5V power and 5V logic signal. To provide 5V  power to relay modules, we use an Arduino. The Arduino provides 5V power to the relay modules by power ports. But we also need to change voltage level of logic signal. For this, we use a logic level converter ensures up to 3.3V logic signals are converted to 5V. Logic level converter module has two side. One side has 4 low logic signal (LV), 1 GND and 1 low voltage input. Other side includes 4 High logic signal output, 1GND and 1 high voltage input. But all the electronic components must connected to same ground line. So we connected to all the ground line together from Nexys, Arduino, Relay modules and Logic Level Converter. 
Brifely, we provide 4 Logic signals upgraded by LLC from Nexys FPGA board to 2 pieces 2 relay module and we provide the power for modules from Arduino. Here is the schematics of component connections: 
![Schematic FPGA Project ](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/164936141/f7d15b7c-4978-4309-af69-a4b3af050754)


## Software Description

## Component(s) Simulation

## Instructions

## References

## How to Contribute
1. Fork the repository and clone it to your local machine.
2. Choose a task or role you're interested in and start contributing.
3. Create a new branch for your work and submit pull requests for review.
4. Collaborate with other team members through GitHub Issues and project boards.

## Resources
- Detailed documentation, including research findings, architectural plans, and schematics, can be found in the Documentation folder.
- Code related to the project is stored in the Code folder, organized into subfolders for different components.
- Media assets, such as videos and images, are stored in the Media folder to showcase the project's progress and results.

## Project Status
This project is currently in the development phase, with each team member actively contributing to their respective roles. We welcome contributions and feedback from the community to help us make this project a success!

Let's make magic happen together! 🎶✨
