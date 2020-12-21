# AraAssim-Vector-magnitude-and-arctangent-approximation

The objective of this project is to design a system for approximating magnitude and arctangent (phase) of vectors in Verilog HDL, the Verilog code, the testbench and all the required technology files are provided here with a description. Using the source codes, modeling at the behavioral level can done using Cadence Incisive tool, in addition to that, the system can be synthesized using Cadence RTL compiler tool so then its layout (using xh018 technology of X-FAB) can generated automatically using Cadence Encounter tool.

| File name                  | Description                                                                                                                                                                      |
|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| simlink_functio.v          | top module description in Verilog HDL                                                                                                                                            |
| simlink_functio_tb.v       | its the test bench for verifying the Verilog description of the system at the behavioral level, this file is used along with the module description to generate timing diagrams. |
| simlink_functio_tb_final.v | this test bench is used for verifying the obtained logic gates and interconnects after generating the layout                                                                     |
