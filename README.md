# Voting Machine  Project

## Overview
A Verilog-based voting machine implemented in Vivado, simulating a voting system with button inputs and LED outputs.

## Features
- **Button Inputs**: 4 buttons for voting.
- **LED Outputs**: 8-bit LED array displays results.
- **Modes**: Multiple voting modes supported.
- **Simulation**: Testbenches for functional verification.

## Tools
- **Vivado**: Xilinx Vivado 2024.2

## Directory Structure
VotingMachineProject/

├── src/                  
│   ├── votingMachine.v     
│   ├── buttonControl.v   
│   ├── voteLogger.v       
│   ├── modeControl.v     

├── tb/                     
│   ├── votingMachine_tb.v  

├── results/                
│   ├── dump.vcd          
│   ├── simulation.log     

├── README.md               
└── .gitignore             


## Usage

1. **Open Project**: Launch Vivado and open `voting_machine.xpr`.
2. **Simulate**: Use `votingMachine_tb.v` to simulate; view `dump.vcd` with Vivado.


## License
MIT License. See [LICENSE](LICENSE) for details.

## Acknowledgments
- Xilinx Vivado for votingMachine design and simulation visualization.



