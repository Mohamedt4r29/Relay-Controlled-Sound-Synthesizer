Relay-Controlled Sound Synthesizer

Welcome to the Relay-Controlled Sound Synthesizer project repository! This project aims to develop and implement a sound synthesizer utilizing relays on the Nexys A7-50T FPGA board. At the project, Rather than generating audio signals directly, the system utilizes relays linked to Pmod connectors to produce audible sounds by controlling the on and off states of relay switches. Also the user can control the basic functions like play, pause, song navigaton by using push buttons. The LEDs and 7-segment display helps to visualization of the melody. 

Team Members

Mohamed Abdelreheem: 


Miguel Ángel Jiménez Duarte: 


Yusuf Çetin Onaran: 


Eirini Vasileiadi:



Theoretical description



Hardware description of demo application 

The project consist Nexys A7-50T board, Arduino Uno R3, 3 pieces 2 relay module, 2 pieces logic level converter, breadboard and jumper cables. 
As a main board of the project, Nexys provides the logic signals to the relay modules by 10 Pmod Ports. A 10 Pmod Port has 2 GND, 2 VCC (3V3) and 8 Logic signal. But the relay modules need 5V power and 5V logic signal. Because of that we also use an arduino and logic level converter. Arduino provides the 5V power the relay modules. Logic level converter provides to up 3.3V to 5V logic signal. For 
![FPGA Project Schematic](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/164936141/361734d0-5251-40f4-9b8f-6ded01f3b049)


Software description 


Component(s) simulation


Instructions 


References 


This role involves diving deep into the project's topic, creating detailed plans, and providing a clear picture of how everything will come together.

Creative Content Wizard: Responsible for crafting engaging content, including videos and social media content, to showcase the project and generate excitement.

Coding Crew: A team of tech-savvy individuals who will collaborate on GitHub to tackle the coding and software side of the project.

Hardware Hero: Tasked with bringing the project to life by working on the physical aspects, such as implementing relay-controlled circuits on the FPGA board.

How to Contribute:
Fork the repository and clone it to your local machine.
Choose a task or role you're interested in and start contributing.
Create a new branch for your work and submit pull requests for review.
Collaborate with other team members through GitHub Issues and project boards.
Resources:
Detailed documentation, including research findings, architectural plans, and schematics, can be found in the Documentation folder.

Code related to the project is stored in the Code folder, organized into subfolders for different components.

Media assets, such as videos and images, are stored in the Media folder to showcase the project's progress and results.

Project Status:
This project is currently in the development phase, with each team member actively contributing to their respective roles. We welcome contributions and feedback from the community to help us make this project a success!

Let's make magic happen together! 🎶✨
