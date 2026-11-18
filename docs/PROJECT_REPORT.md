# 4-Bit Ring Counter — RTL to GDSII Implementation

## 1. Project Overview

This project implements a 4-bit ring counter using Verilog HDL and demonstrates an educational digital ASIC implementation flow using the SKY130A process design kit.

## 2. Design Specifications

- Design: 4-bit ring counter
- HDL: Verilog
- Clock: Rising-edge triggered
- Reset: Synchronous, active high
- Initial state after reset: 0001
- Technology: SKY130A
- Standard-cell library: sky130_fd_sc_hd

## 3. Functional Operation

The counter rotates a single logic 1 through four register bits.

| Clock cycle | Output q[3:0] |
|---|---|
| Reset | 0001 |
| 1 | 0010 |
| 2 | 0100 |
| 3 | 1000 |
| 4 | 0001 |

## 4. Tools Used

- Icarus Verilog — functional simulation
- GTKWave — waveform inspection
- Yosys — logic synthesis
- OpenLane 2 — RTL-to-GDSII implementation
- OpenROAD — physical design
- SKY130A — process design kit
- KLayout — layout inspection

## 5. Physical Design Results

| Metric | Result |
|---|---:|
| Standard-cell area | 364.099 µm² |
| Die area | 10,000 µm² |
| Core area | 6,277.27 µm² |
| Estimated total power | 95.465 µW |
| Setup slack | 6.192 ns |
| Hold slack | 0.397 ns |
| Setup violations | 0 |
| Hold violations | 0 |

## 6. Physical Verification

- DRC: Passed
- LVS: Passed
- Antenna check: Passed

## 7. Project Deliverables

The deliverables directory contains the Verilog RTL, testbench, configuration, implementation metrics, and final GDSII, DEF, and LEF files.

## 8. Limitations

This is an educational implementation, not a tapeout-qualified design. Power values are tool estimates, not measured silicon power. Complete timing signoff, power-integrity analysis, constraints review, and foundry-specific requirements are still necessary before fabrication.

## 9. Conclusion

This project demonstrates the digital ASIC implementation journey from Verilog RTL design and functional simulation to synthesis, physical implementation, verification, and GDSII generation.
