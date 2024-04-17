# Relay-Controlled Sound Synthesizer

Welcome to the Relay-Controlled Sound Synthesizer project repository! Our goal is to develop and implement a sound synthesizer utilizing relays on the Nexys A7-50T FPGA board. Instead of generating audio signals directly, our system uses relays linked to Pmod connectors to produce audible sounds by controlling the on and off states of relay switches. Additionally, users can control basic functions like play, pause, and song navigation using push buttons. LEDs and a 7-segment display help visualize the melody.

## Team Members
- Mohamed Abdelreheem
- Miguel Ángel Jiménez Duarte
- Yusuf Çetin Onaran
- Eirini Vasileiadi

## Theoretical Description

## Hardware Description of Demo Application
The project consists of the Nexys A7-50T board, Arduino Uno R3, 3 pieces of 2 relay modules, 2 pieces of logic level converters, breadboard, and jumper cables. The Nexys board provides logic signals to the relay modules via 10 Pmod Ports. Each 10 Pmod Port has 2 GND, 2 VCC (3V3), and 8 logic signals. However, the relay modules require 5V power and 5V logic signal. To address this, we also use an Arduino and logic level converters. The Arduino provides 5V power to the relay modules, while the logic level converter ensures up to 3.3V logic signals are converted to 5V.

![FPGA Project Schematic](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/164936141/361734d0-5251-40f4-9b8f-6ded01f3b049)

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
