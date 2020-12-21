## Setup technology files
include ../Source/X-FAB_fast.tcl
## Setup variables
set DESIGN simulink_functio
set PARAMS {}
## Read in Verilog HDL files
# Delay modules
#read_hdl -v2001 ../Source/Delay/Delay.v
#read_hdl -v2001 ../Source/Delay/MultiDelay.v
# Top module
read_hdl -v2001 ../Source/Complete_system_Fixedpoint/simulink_functio.v
## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
## Setup design constraints
read_sdc ../Source/Complete_system_Fixedpoint/simulink_functio.sdc
## Synthesize our schematic (create a technology-dependent schematic)
synthesize -to_generic
synthesize -to_mapped
synthesize -incremental
## Write out area and timing reports
report area > ../Reports/Top_synth_area_report_fast_10MHz
report timing > ../Reports/Top_synth_timing_report_fast_10MHz
gui_show

