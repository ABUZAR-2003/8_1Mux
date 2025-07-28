#  8:1 Multiplexer (MUX) Mini Project
## Quartus Prime & Cadence (RTL-GDS Flow, 45nm)

This repository demonstrates the design and implementation of an 8:1 multiplexer (MUX) using three Verilog modeling styles: Behavioral, Dataflow, and Structured. Each modeling approach offers a unique perspective and abstraction for digital system design, allowing a comprehensive understanding of how multiplexers operate from high-level design to low-level hardware implementation.

Project Highlights
## Modeling Styles Explored:

Behavioral Modeling: Describes MUX functionality using high-level control statements, emphasizing design intent.

Dataflow Modeling: Uses continuous assignments and boolean logic to directly represent MUX data paths.

Structured Modeling: Hierarchically builds the 8:1 MUX from smaller multiplexer modules, illustrating subsystem integration.

## Implementation Flow:

The Verilog designs are verified using simulation tools.

For RTL-to-GDSII implementation, Cadence tools are used with a 45nm technology node, taking the design from RTL through synthesis, placement, routing, and signoff.

This complete flow demonstrates both simulation-level understanding (Quartus/ModelSim) and industry-realistic hardware realization (Cadence, 45nm).

## Learning Objectives:

Compare and contrast behavioral, dataflow, and structural design paradigms.

Understand digital logic abstraction layers and their impact on synthesis and physical design.

Gain practical experience in full custom digital hardware design using modern EDA tools.
