# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all Verilog modules in lab02_prelab_part2.v to working dir;
# could also have multiple Verilog files.
# The timescale argument defines default time unit
# (used when no unit is specified), while the second number
# defines precision (all times are rounded to this value)
vlog -timescale 1ns/1ns lab02_prelab_part3.v

# Load simulation using mux as the top level simulation module.
vsim HEX_decoder

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

# First test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 1
# Run simulation for a few ns.
# result should display 0
run 10ns

# Second test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
# Run simulation for a few ns.
# result should display 1
run 10ns

# third test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 0
# Run simulation for a few ns.
# result should display 2
run 10ns

# fourth test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
# Run simulation for a few ns.
# result should display 3
run 10ns

# fifth test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
# Run simulation for a few ns.
# result should display 4
run 10ns

# sixth test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 1
# Run simulation for a few ns.
# result should display 5
run 10ns

# seventh test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
# Run simulation for a few ns.
# result should display 6
run 10ns

# eighth test case
# Set input values using the force command, signal names need to be in {} brackets.
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
# Run simulation for a few ns.
# result should display 7
run 10ns
