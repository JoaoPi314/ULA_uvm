`uvm_analysis_imp_decl(_ULAreq)
`uvm_analysis_imp_decl(_ULAresp)


class coverage extends uvm_component;
  `uvm_component_utils(coverage)
 
  ULA_transaction_in req;
  ULA_transaction_out resp;
  uvm_analysis_imp_ULAreq#(ULA_transaction_in, coverage) ULA_req_port;
  uvm_analysis_imp_ULAresp #(ULA_transaction_out, coverage) ULA_resp_port;
  int min_tr;
  int n_tr = 0;
  event end_of_simulation;

  function new(string name = "coverage", uvm_component parent= null);
    super.new(name, parent);
    ULA_req_port = new("ULA_req_port", this);
    ULA_resp_port = new("ULA_resp_port", this);
    req=new;
    resp=new;
    min_tr = 1000;

          
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase (phase);

  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    @(end_of_simulation);
    phase.drop_objection(this);

  endtask: run_phase

  function void write_ULAresp(ULA_transaction_out t);
    if(n_tr >= min_tr -1 )begin
      ->end_of_simulation;
    end
    n_tr = n_tr + 1;
  endfunction

  function void write_ULAreq(ULA_transaction_in t);
    req = ULA_transaction_in#()::type_id::create("req", this);
    req.copy(t);
  endfunction

/*
  covergroup instructions;
    coverpoint req.instru {
                            bins soma  = {2'b00};
                            bins sub   = {2'b01};
                            bins incrA = {2'b10};
                            bins incrR = {2'b11};
                          }
  endgroup : instructions
*/



endclass : coverage
