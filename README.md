# Universal Shift Register — RTL to GDSII
**Full ASIC implementation on SkyWater SKY130 130nm Open-Source PDK**

---

## Overview

A complete RTL-to-GDSII physical design flow for a 4-bit Universal Shift Register, implemented on the SkyWater SKY130 130nm open-source process using the LibreLane/OpenROAD toolchain. The design supports four operating modes — hold, shift-right, shift-left, and parallel load — with a synchronous active-high reset.

---

## Design Specification

| Parameter | Value |
|---|---|
| Design | 4-bit Universal Shift Register |
| Process | SkyWater SKY130 130nm |
| Standard Cell Library | `sky130_fd_sc_hd` (High Density) |
| Clock Target | 100 MHz (10 ns period) |
| Operating Modes | Hold / Shift-Right / Shift-Left / Parallel Load |
| Reset | Synchronous, active-high |

---

## RTL

```verilog
module u_s_r (
    input  wire        clk,
    input  wire        rst,      // synchronous active-high reset
    input  wire [1:0]  mode,     // 00=hold 01=shift-right 10=shift-left 11=load
    input  wire [3:0]  D,        // parallel data input
    input  wire        S_in,     // serial input
    output reg  [3:0]  Q         // registered output
);
    always @(posedge clk) begin
        if (rst) Q <= 4'b0;
        else case (mode)
            2'b00: Q <= Q;
            2'b01: Q <= {S_in, Q[3:1]};
            2'b10: Q <= {Q[2:0], S_in};
            2'b11: Q <= D;
        endcase
    end
endmodule
```

---

## Implementation Flow

```
RTL (Verilog)
    ↓  Yosys — Synthesis
Gate-level Netlist (sky130_fd_sc_hd cells)
    ↓  OpenROAD — Floorplan + Power Planning
    ↓  OpenROAD — Placement (Global + Detailed)
    ↓  OpenROAD — Clock Tree Synthesis (CTS)
    ↓  OpenROAD — Routing (Global + Detailed)
    ↓  OpenROAD — Post-Route Optimization
    ↓  OpenSTA  — Multi-corner Signoff STA (9 PVT corners)
    ↓  Magic    — DRC + SPICE Extraction
    ↓  Netgen   — LVS
    ↓  KLayout  — GDSII Export
GDSII
```

---

## Synthesis Results

| Metric | Value |
|---|---|
| Total Standard Cells | 24 |
| Chip Area | **261.50 µm²** |
| Sequential Area | 85.08 µm² (32.5%) |
| Combinational Area | 176.42 µm² (67.5%) |

**Cell breakdown:**

| Cell | Count | Function |
|---|---|---|
| `sky130_fd_sc_hd__dfxtp_2` | 4 | D flip-flops (Q[3:0]) |
| `sky130_fd_sc_hd__and3_2` | 4 | Mode decode logic |
| `sky130_fd_sc_hd__and3b_2` | 3 | Mode decode logic |
| `sky130_fd_sc_hd__o221a_2` | 3 | Shift data routing |
| Others | 10 | AND/OR/NAND/INV gates |

---

## Signoff Results

### Timing — Multi-corner STA (9 PVT corners)

| Corner | Hold WNS | Setup WNS | Violations |
|---|---|---|---|
| **nom_tt_025C_1v80** (nominal) | +0.196 ns | +5.887 ns | 0 |
| **max_ss_100C_1v60** (worst setup) | +0.418 ns | **+4.170 ns** | 0 |
| **min_ff_n40C_1v95** (worst hold) | **+0.123 ns** | +6.534 ns | 0 |
| Overall (worst across all corners) | +0.123 ns | +4.170 ns | **0** |

- **Setup violations:** 0 across all 9 PVT corners
- **Hold violations:** 0 across all 9 PVT corners
- **Estimated Fmax:** ~171 MHz (worst-case SS/100°C/1.6V) | ~243 MHz (nominal TT/25°C)

### Physical Verification

| Check | Result |
|---|---|
| DRC (Magic) | ✅ Clean |
| LVS (Netgen) | ✅ Pass |
| Antenna Check | ✅ Pass |
| Wire Length | ✅ Pass |
| Max Cap / Max Slew | ✅ 0 violations |

---

## Tools

| Tool | Role |
|---|---|
| [LibreLane](https://github.com/librelane/librelane) | RTL-to-GDSII flow orchestration |
| [Yosys](https://github.com/YosysHQ/yosys) | Synthesis |
| [OpenROAD](https://github.com/The-OpenROAD-Project/OpenROAD) | Place, Route, CTS, Optimization |
| [OpenSTA](https://github.com/The-OpenROAD-Project/OpenSTA) | Static Timing Analysis |
| [Magic](http://opencircuitdesign.com/magic/) | DRC + SPICE extraction |
| [Netgen](http://opencircuitdesign.com/netgen/) | LVS |
| [KLayout](https://www.klayout.de/) | GDSII viewer + DRC |
| [SkyWater SKY130 PDK](https://github.com/google/skywater-pdk) | 130nm open-source process |

---

## Repository Structure

```
.
├── src/
│   └── u_s_r.v              # RTL source
├── constraints.sdc           # Timing constraints
├── config.json               # LibreLane flow configuration
└── runs/
    └── RUN_XXXX/
        ├── 06-yosys-synthesis/reports/stat.rpt   # Synthesis report
        ├── 55-openroad-stapostpnr/summary.rpt     # Multi-corner STA
        ├── 64-magic-drc/                          # DRC results
        ├── 70-netgen-lvs/                         # LVS results
        └── final/mag_gds/u_s_r.gds               # Final GDSII
```

---

## How to Reproduce

**Requirements:** Docker Desktop, Python 3.8+

```bash
# Install LibreLane
pip install librelane

# Clone and run
git clone https://github.com/<your-username>/u_s_r-sky130
cd u_s_r-sky130
librelane --dockerized config.json
```

First run downloads the SKY130 PDK (~1.5 GB) and LibreLane Docker image (~3 GB).

---

## References

- [SkyWater SKY130 PDK](https://skywater-pdk.readthedocs.io/)
- [LibreLane Documentation](https://librelane.readthedocs.io/)
- [OpenROAD Project](https://openroad.readthedocs.io/)
