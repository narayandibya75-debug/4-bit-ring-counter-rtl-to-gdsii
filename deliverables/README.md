# 4-Bit Ring Counter: RTL to GDSII

## Project Overview
Implementation of a 4-bit ring counter using Verilog HDL.
The design was synthesized and physically implemented using
OpenLane 2 and the SKY130A standard-cell library.

## Design Specifications
- Design: 4-bit Ring Counter
- Reset: Synchronous, active-high
- Clock period: 10 ns
- Technology: SKY130A
- Standard-cell library: sky130_fd_sc_hd

## Tools Used
- Ubuntu on WSL2
- OpenLane 2.3.10
- Yosys 0.46
- OpenROAD
- Icarus Verilog 12.0
- GTKWave
- KLayout

## Implementation Flow
1. RTL design
2. Testbench development
3. RTL simulation
4. Generic synthesis
5. SKY130A technology setup
6. Physical synthesis and floorplanning
7. Placement and clock-tree synthesis
8. Routing and power distribution
9. DRC, LVS and antenna checks
10. GDSII generation

## Results
- Standard-cell area: 364.099 um^2
- Die area: 10,000 um^2
- Core area: 6,277.27 um^2
- Estimated total power: 95.46 uW
- Worst setup slack: 6.192 ns
- Worst hold slack: 0.397 ns
- Setup violations: 0
- Hold violations: 0
- DRC: Passed
- LVS: Passed
- Antenna: Passed

## Deliverables
- ring_counter.v
- tb_ring_counter.v
- config.json
- ring_counter.gds
- ring_counter.def
- ring_counter.lef
- metrics.csv
- metrics.json
