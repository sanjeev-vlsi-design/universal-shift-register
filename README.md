
4-Bit Universal Shift Register
A Universal Shift Register is a highly versatile digital component capable of performing multiple operations on binary data. This repository contains the design and explanation of a 4-bit universal shift register that can be used in various digital systems.

Key Features
4-Bit Data Capacity: Processes and stores 4-bit binary data.
Multi-Functionality: Supports four operations:
Hold: Retains the current data.
Shift Left: Moves all bits one position to the left.
Shift Right: Moves all bits one position to the right.
Parallel Load: Directly loads 4-bit data into the register.
Mode Selection: Operation controlled using a 2-bit mode input.
Synchronous Design: All operations are clock-driven for precise timing.
Modes of Operation
Mode	Operation	Description
00	Hold	Keeps the current data unchanged.
01	Shift Right	Shifts bits to the right; MSB = 0.
10	Shift Left	Shifts bits to the left; LSB = 0.
11	Parallel Load	Directly loads external 4-bit input.
Functional Overview
The 4-bit universal shift register is designed to be a compact and efficient module that performs four essential data operations. It is particularly useful for applications involving data storage, serialization, and manipulation in digital systems.

Inputs:
4-Bit Data Input: Used for parallel loading of new data.
2-Bit Mode Select: Determines the operation mode.
Clock Signal: Synchronizes all operations.
Reset Signal: Resets the register to its default state.
Output:
4-Bit Data Output: Displays the current state of the register.
