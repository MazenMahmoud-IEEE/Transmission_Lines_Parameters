# Electrical Engineering Project: Cascaded Transmission Line Analysis

## Overview
- The project aims to develop a software tool in MATLAB to analyze cascaded electrical transmission lines. 

## Features
- Parameter Calculation: Calculate ABCD parameters of cascaded transmission lines.
- Efficiency Analysis: Calculate the efficiency of the system.
- Voltage Regulation: Calculate voltage stability across the transmission system.

## Simple Demonstration
- The program consists of the main function file and 5 functions each in a file.
- First of all the main asks the user to enter the number of cascaded networks then calls the calc_cascaded function which calculates the A, B, C, and D parameters of the cascaded network.
- The calc_cascaded function calculates the parameters for the cascaded network by a for loop in which it calls the function calc_parameters which calculates the parameters for a single network.
- Then the program asks the user to enter some parameters of the received end which will pass to the calc_sending_receiving function which calculates all the parameters of the sending end.
- Finally, the program calls the efficiency and regulation functions which calculates the efficiency and voltage regulation of the cascaded network.
