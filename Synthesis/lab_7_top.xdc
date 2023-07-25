###################################################################################
# Mentor Graphics Corporation
#
###################################################################################


################
# create clock #
################

# Precision Generated
create_clock [get_ports {clk}] -name {clk} -period 100 -waveform {0 50}
