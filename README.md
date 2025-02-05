Name: YESUPOGU PAPAIAH

Company: CODTECH IT SOLUTIONS

ID: CT08KOK

Domain: VLSI

Duration: JAN 10th TO FEB 10th 2025.

Mentor: NEELA SANTHOSH KUMAR 



## Overview of the Project

### Project:ARITHMETIC LOGIC
UNIT (ALU)



### Simulation Report for ALU Design Project

    The goal of this project was to design and implement a simple Arithmetic Logic Unit (ALU) that supports basic operations such as Addition, Subtraction, AND, OR, and NOT. The design was implemented in VHDL and simulated using a testbench. The ALU design operates on 4-bit input vectors and performs operations based on a 3-bit control signal, which dictates which function the ALU will execute. The testbench was designed to validate the functionality of the ALU by applying various test cases, each corresponding to one of the operations the ALU can perform.

The ALU was designed to handle five distinct operations based on the control input:

Addition (control = "000"): The ALU adds two 4-bit input vectors A and B.
Subtraction (control = "001"): The ALU subtracts input B from input A.
AND (control = "010"): The ALU performs a bitwise AND operation between A and B.
OR (control = "011"): The ALU performs a bitwise OR operation between A and B.
NOT (control = "100"): The ALU inverts the bits of input A.
In terms of VHDL code, the ALU entity was designed with two 4-bit input ports (A and B) and one 3-bit control signal to select the desired operation. The result is output as a 4-bit vector, and a carry-out signal is also produced, although it wasn't used for all operations (only for addition and subtraction). The architecture of the ALU was implemented using a process statement that checks the value of the control signal and performs the corresponding operation.

The testbench was crafted to test the ALU by applying a variety of input values for A, B, and control signals. Each operation was tested by feeding the ALU with different combinations of inputs and verifying that the result matched the expected output. The test cases were as follows:

Test case 1: A = 3 (0011), B = 5 (0101), Control = "000" (Addition). Expected result: 8 (0000).
Test case 2: A = 9 (1001), B = 3 (0011), Control = "001" (Subtraction). Expected result: 6 (0110).
Test case 3: A = 13 (1101), B = 11 (1011), Control = "010" (AND). Expected result: 9 (1001).
Test case 4: A = 13 (1101), B = 11 (1011), Control = "011" (OR). Expected result: 15 (1111).
Test case 5: A = 13 (1101), B = 0 (0000), Control = "100" (NOT). Expected result: 2 (0010).
The simulation was run on an FPGA simulation tool (such as ModelSim, Vivado, or EDA Playground), and the results were observed through the waveform viewer. The waveform displayed the values of the input signals, the control signal, and the output result at each timestep. For each test case, the output was verified against the expected result to ensure the ALU was functioning correctly.

The results from the simulation indicated that the ALU performed all operations correctly. For addition and subtraction, the ALU generated accurate results based on the binary arithmetic. For the logical operations (AND, OR, NOT), the ALU correctly applied bitwise logic to the input vectors. Furthermore, the ALU correctly handled the NOT operation on a single input vector, demonstrating proper bit inversion.

This project successfully demonstrated the implementation of a basic ALU using VHDL, with a focus on clarity, accuracy, and verification. The design could be extended in the future to support more complex operations such as multiplication or division. Overall, the simulation results confirmed that the ALU met its functional requirements, making it a valuable component for more complex digital systems. The testbench provided a solid verification mechanism for ensuring the correctness of the ALU's functionality across various scenarios.

In conclusion, this project highlights the importance of careful VHDL design, testing, and simulation in the creation of functional hardware components. The ALU designed here can serve as a fundamental building block for digital systems, and the methodology used in the testbench can be applied to larger, more complex designs in future projects.



### Output: 
![output](https://github.com/yesupogupapaiah/ARITHMETIC-LOGIC-UNIT-ALU-/blob/main/task1.png)
