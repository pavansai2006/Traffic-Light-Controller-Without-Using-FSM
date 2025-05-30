# Traffic Light Controller Without Using FSM

This project implements a simple traffic light controller in Verilog without using a Finite State Machine (FSM). It controls traffic signals for four directions with timed transitions for RED, ORANGE, and GREEN lights.

## Features
- Controls 4-direction traffic signals
- Time-based signal transitions (Red → Orange → Green)
- Simulation waveform support (`.vcd` file)
- Testbench with live display of signal states

## Files
- `Design.v` – Verilog module implementing the controller logic.
- `Testbench.v` – Testbench to simulate and verify the traffic light behavior.
- `trafficlight.vcd` – Generated waveform file for simulation tools like GTKWave.

## How It Works
The controller uses a time counter to switch signal states for each direction at fixed intervals without FSM logic. Each direction gets a green signal in sequence while the others remain red.

## Simulation
Use any Verilog simulator like Icarus Verilog:
```bash
iverilog -o traffic_light traffic_light.v traffic_light_tb.v
vvp traffic_light
gtkwave trafficlight.vcd
