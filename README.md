Voting Machine Project



Overview:
This project implements a voting machine using  Verilog and tested using Vivado.

modules:

1)buttoncontrol: 

-The vote should be logged only after button has been pressured for a certain amount of time.Only a singlevote should be logged if button is 
                   pressured for large duration.

2)modecontrol:

-Used for control of LEDs.For voting mode, LEDs are light up for a second to indicate the vote has been casted.For tally mode, LEDs light up in 
                binary numbers to indicate the number of votes recieved by candidate.

3)votelogger:

-Logs the valid votes if it is the proper mode.Also used to reset the values at the start of operation.

4)votingmachine: Top module


software:
Xilinx Vivado

Flowchart



Below is the flowchart representing the voting machine operation:

![Flowchart](Screenshot%20(243).png)





Simulation Results



The following waveform represents the testbench simulation results:


![Simulation Results](Screenshot%20(241).png)
![Simulation Results](Screenshot%20(252).png)



Features



✅ Designed an  voting machine✅ Implemented using Verilog in Vivado✅ Supports multiple voting modes✅ Includes button control and mode control logic✅ Verified using testbench simulation



Repository Structure



├── vote.srcs/                 
   ├── sources_1/new/      

      ├── votingMachine.v    # Main module

      ├── voteLogger.v       # Logs votes

      ├── modeControl.v      # Manages voting modes

     ├── buttonControl.v    # Handles button input
   ├── sim_1/new/             

      ├── votingMachine_tb.v # Testbench module

├── flowchart.png           

├── results.png             

├── README.md                  



How to Run



Clone the repository:



git clone https://github.com/kranthiuppada/votingMachineProject.git

cd votingMachineProject



Open Vivado and import the Verilog files.



Run the testbench (votingMachine_tb.v) to verify the design.



Analyze the waveform results in the simulator.



License



This project is licensed under the MIT License. Feel free to use and modify it, but please give credit! 🚀





