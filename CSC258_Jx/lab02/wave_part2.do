# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all Verilog modules in lab02_prelab_part2.v to working dir;
# could also have multiple Verilog files.
# The timescale argument defines default time unit
# (used when no unit is specified), while the second number
# defines precision (all times are rounded to this value)
vlog -timescale 1ns/1ns lab02_prelab_part2.v

# Load simulation using mux as the top level simulation module.
vsim mux4to1

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

# First test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 0
# Run simulation for a few ns.
# result should be 0
run 10ns

# Second test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output u which is 1
run 10ns

# third test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output v which is 0
run 10ns

# fourth test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output v which is 1
run 10ns

# fifth test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output w which is 0
run 10ns

# sixth test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output w which is 1
run 10ns

# seventh test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output x which is 0
run 10ns

# eighth test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output x which is 1
run 10ns

# 9th test case: change input values and run for another 10ns.
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 0
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output u which is 0
run 10ns

# 10th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 0
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output u which is 1
run 10ns

# 11th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 0
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output v which is 0
run 10ns

# 12th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 0
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output v which is 1
run 10ns

# 13th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output w which is 0
run 10ns

# 14th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 0
# Run simulation for a few ns.
# result should be output w which is 1
run 10ns

# 15th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output x which is 0
run 10ns

# 16th test case: change input values and run for another 10ns.
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 1
# Run simulation for a few ns.
# result should be output x which is 1
run 10ns
