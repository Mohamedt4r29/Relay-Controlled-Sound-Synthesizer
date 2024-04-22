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

## Video Demo
Here's a video demonstrating the results of our code in action:

[![Video Demo](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/51502560/b0e89de0-d8c3-42d6-9b44-4cc40e8a2b04)](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/51502560/b0e89de0-d8c3-42d6-9b44-4cc40e8a2b04)


## Component(s) Simulation

## VHDL Code Explanation
The VHDL code provided in this repository implements a rhythmic pattern generator for the sound synthesizer. This generator is responsible for producing different rhythmic patterns based on the states of the input switches (`SW`). The code leverages a clock signal (`CLK100MHZ`) to control the timing of the beats and a push-button input (`BTNC`) for resetting the beat states.

### Algorithmic Overview:
1. **Initialization**: 
   - The code initializes variables to manage the durations and states of each beat period.
   - It also sets the initial state of the switches and the reset signal.

2. **Beat Generation Process**:
   - The beat generation process is triggered by the rising edge of the clock signal.
   - For each switch, a corresponding beat pattern is generated based on its state (`SW(0)` to `SW(3)`).
   - The duration of each beat period is controlled by incrementing counters (`period1` to `period4`) with each clock cycle.
   - When a counter reaches its predefined threshold, the state of the corresponding beat is toggled (`state1` to `state4`).

3. **Reset Logic**:
   - The reset logic process detects when the push-button (`BTNC`) is pressed.
   - When the button is pressed, the reset signal is activated, resetting all beat periods and states to their initial values.

4. **Output Assignment**:
   - The generated beat states (`state1` to `state4`) are assigned to output signals (`JA`) for controlling the relays.
   - Additionally, the beat states are visualized on LEDs (`LED`) to provide real-time feedback.

### Description of the VHDL Code:
- The `PROJECT` entity defines the input and output ports required for the synthesizer.
- Inside the architecture block, processes handle beat generation and reset logic.
- Beat durations are managed using counters, and beat states are toggled accordingly.
- Outputs are assigned the values of the beat states to control relays and visualize beats on LEDs.

This rhythmic pattern generator serves as the foundation for creating various musical sequences, enabling users to experiment with different beats and rhythms. Its modular design allows for easy integration into larger FPGA-based music synthesis projects.


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
