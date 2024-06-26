# Relay-Controlled Sound Synthesizer

Welcome to the Relay-Controlled Sound Synthesizer project repository! Our aim is to develop and implement a sound synthesizer using relays on the Nexys A7-50T FPGA board. Instead of directly generating audio signals, our system utilizes relays connected to Pmod connectors to produce audible sounds by controlling the on and off states of relay switches. Additionally, users can control basic functions like play, pause, and song navigation using push buttons. LEDs and a 7-segment display help visualize the melody.

## Team Members
- **Mohamed Abdelreheem**: Responsible for constraints file, GitHub, and presentation.
- **Miguel Ángel Jiménez Duarte**: Responsible for top-level code and RTL schematics.
- **Yusuf Çetin Onaran**: Responsible for hardware design, schematics, GitHub, and physical implementation.
- **Eirini Vasileiadi**: Responsible for presentation and physical implementation.


## Hardware Description of Demo Application
The project consists of the Nexys A7-50T board, Arduino Uno R3, 2 pieces of 2-relay modules, a logic level converter, breadboard, and jumper cables. The Nexys board provides logic signals to the relay modules via Pmod Ports. Each Pmod Port group (JA, JB, JC, JD) has 2 GND, 2 VCC (3.3V), and 8 logic signals. However, the relay modules require 5V power and 5V logic signal. To provide 5V power to the relay modules, we use an Arduino. The Arduino supplies 5V power to the relay modules via power ports. However, we also need to change the voltage level of logic signals. For this, we use a logic level converter to ensure that up to 3.3V logic signals are converted to 5V. The logic level converter module has two sides: one side with 4 low logic signal (LV), 1 GND, and 1 low voltage input, and the other side includes 4 high logic signal outputs, 1 GND, and 1 high voltage input. However, all the electronic components must be connected to the same ground line. Therefore, we connect all the ground lines together from the Nexys board, Arduino, relay modules, and logic level converter. In summary, we provide 4 logic signals upgraded by the logic level converter from the Nexys FPGA board to 2 pieces of 2 relay modules, and we provide power for the modules from the Arduino. Here is the schematic of the component connections: 


![Schematic FPGA Project](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/164936141/00a854cf-404a-4b3b-9c61-e81784828cd4)




### VHDL Code Explanation

The VHDL code provided in this repository serves as the foundation for a Relay-Controlled Sound Synthesizer implemented on an FPGA board. Below is an overview of the functionality and structure of the VHDL code:

#### Entity Declaration:
The VHDL code begins with the declaration of the `SoundSynthesizer` entity. This entity defines the input and output ports required for the synthesizer. The input ports include:
- `CLK100MHZ`: Clock signal input.
- `BTNC`: Push-button input for resetting the beat states.
- `SW`: Four-bit vector representing the states of input switches.
The output ports include:
- `Relay1`, `Relay2`, `Relay3`, `Relay4`: Outputs controlling the relay switches.
- `LED`: Four-bit vector for visualizing beat states on LEDs.

#### Architecture:
Inside the `Behavioral` architecture block, processes handle beat generation and reset logic. The architecture follows a sequential logic design, triggered by the rising edge of the clock signal (`CLK100MHZ`).

#### Beat Generation Process:
The beat generation process is responsible for producing different rhythmic patterns based on the states of the input switches (`SW`). The code supports four different beats corresponding to each switch (`SW(0)` to `SW(3)`).

- **Initialization**: The code initializes variables to manage the durations and states of each beat period. It also sets the initial state of the switches and the reset signal.
- **Beat Generation**: For each switch, a corresponding beat pattern is generated based on its state. The duration of each beat period is controlled by incrementing counters (`period1` to `period4`) with each clock cycle. When a counter reaches its predefined threshold, the state of the corresponding beat is toggled.
- **Reset Logic**: The reset logic process detects when the push-button (`BTNC`) is pressed. When the button is pressed, the reset signal is activated, resetting all beat periods and states to their initial values.
- **Output Assignment**: The generated beat states are assigned to output signals for controlling the relay switches (`Relay1` to `Relay4`). Additionally, the beat states are visualized on LEDs to provide real-time feedback.

#### Description of the VHDL Code:
- The code follows a modular design, with clear separation of functionality into processes and entities, enhancing readability and maintainability.
- It leverages VHDL's concurrent and sequential constructs to efficiently manage the timing and control of beat generation.
- The code is well-commented, providing detailed explanations of each section's purpose and functionality.

This VHDL code forms the core of the Relay-Controlled Sound Synthesizer, providing the logic for generating rhythmic patterns and controlling relay switches based on user input. It serves as a flexible and customizable platform for creating various musical sequences and exploring different beats and rhythms.

## Simulation

To verify the functionality of the Sound Synthesizer design, we conducted simulations using Vivado Simulator. The simulation results confirmed that the synthesizer operates as expected, generating the desired rhythmic patterns based on the input switch states and button presses.

Below is a snapshot of the simulation waveform:
![simulation 2](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/51502560/f305c8ed-a33f-42da-9f39-f868e9e722e0)



In the waveform, you can observe the behavior of the clock signal (`CLK100MHZ`), input switches (`SW`), push-button (`BTNC`), as well as the output signals controlling the relay switches (`Relay1` to `Relay4`) and the LED indicators (`LED`).

This simulation provides confidence in the functionality and correctness of the Sound Synthesizer design before implementation on the FPGA hardware.

## Schematic
In the following picture, it is possible to see the general overview of the working principle of the software of the project. 

![image](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/158856032/c8ad8bb0-d15e-4e61-a2f5-b94a064e8806)

Below is a schematic diagram illustrating the inner logic connections generated from Vivado for our sound synthesizer project:

![image](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/158856032/a5781c17-c0ef-4022-b400-901a37df569a)

This schematic provides a visual representation of the internal logic connections within the FPGA, including signal routing, module interconnections, and other relevant logic elements. It serves as a helpful reference for understanding the internal hardware architecture and setup of our project.






### Video Demo and Project Files Download
Here's a video demonstrating the results of our code in action:

[![Video Demo](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/51502560/ab2a7dec-32a8-439a-bc4c-3b222d5abf93)](https://github.com/Mohamedt4r29/Relay-Controlled-Sound-Synthesizer/assets/51502560/ab2a7dec-32a8-439a-bc4c-3b222d5abf93)

If you'd like to download the project files, you can access them via the following link:

[Download Project Files](https://drive.google.com/file/d/1B6X_Gj_meZIOL6gVW5wNe7sOObVb9xka/view?usp=drive_link)







## References

Here are some useful resources related to our project:

- [Nexys A7 Reference Manual](https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual) - Provides detailed information about the Nexys A7 FPGA board.
- [Arduino Uno Rev3 Documentation](https://docs.arduino.cc/hardware/uno-rev3) - Documentation for the Arduino Uno R3, which we used in our project.
- [VHDL Course - Lab 2: Logic](https://github.com/tomas-fryza/vhdl-course/tree/master/lab2-logic) - VHDL course materials covering logic design, which provided valuable insights for our project.
- [VHDL Course - Lab 5: Counter](https://github.com/tomas-fryza/vhdl-course/tree/master/lab5-counter) - Another resource from the VHDL course, focusing on counter design, which contributed to our code development.
- [Relay Interface with FPGA](https://www.pantechsolutions.net/relay-interface-with-fpga) - Information on interfacing relays with an FPGA, helpful for understanding relay control in our project.
- [Nexys A7-50T Master Constraint File](https://raw.githubusercontent.com/Digilent/digilent-xdc/master/Nexys-A7-50T-Master.xdc) - Constraint file for the Nexys A7-50T board, used to map input and output ports in our project.
- [Video Tutorial: Nexys A7 FPGA Board Setup](https://youtu.be/qep13jRYDxs?si=0CZNVqrT8JzZwwl9) - A helpful video guide demonstrating the setup process for the Nexys A7 FPGA board.
- [Video Tutorial: Introduction to VHDL](https://youtu.be/SL9fmA2PdMw?si=hBiaiLtUg-rCYED1) - An introductory video tutorial on VHDL, useful for beginners learning about hardware description languages.

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
