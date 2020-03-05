package pkg;
	`include "uvm_macros.svh"
	 import uvm_pkg::*;

  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_transaction_in.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_transaction_out.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_sequence_in.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_driver.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_monitor.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_agent.sv"
  
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/REG_transaction_in.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/REG_sequence_in.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/REG_driver.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/REG_monitor.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/REG_agent.sv"

  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/coverage.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/refmod.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/scoreboard.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/env.sv"
  `include "/home/joaopedro/Documents/ULA_uvm/ambiente/tb/simple_test.sv"
  
endpackage
