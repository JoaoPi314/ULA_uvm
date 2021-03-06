class scoreboard extends uvm_scoreboard;​
  `uvm_component_utils(scoreboard)​

  typedef ULA_transaction_out T;​
  typedef uvm_in_order_class_comparator #(T) comp_type;​
  comp_type comp;
  refmod rfm;
  uvm_analysis_port #(T) ap_comp;​
  uvm_analysis_port #(ULA_transaction_in) ap_rfm_ULA;
  uvm_analysis_port #(REG_transaction_in) ap_rfm_REG;​



  function new(string name = "scoreboard", uvm_component parent = null);​
    super.new(name, parent);​
    ap_comp = new("ap_comp", this);​
    ap_rfm_ULA = new("ap_rfm_ULA", this);
    ap_rfm_REG = new("ap_rfm_REG", this);​
  endfunction : new​

  virtual function void build_phase(uvm_phase phase);​
    super.build_phase(phase);​
    rfm = refmod::type_id::create("rfm", this);
​    comp = comp_type::type_id::create("comp", this);
  endfunction​

  virtual function void connect_phase(uvm_phase phase);​
    super.connect_phase(phase);​
    ap_comp.connect(comp.before_export);
    ap_rfm_ULA.connect(rfm._ULA);
    ap_rfm_REG.connect(rfm._REG);
    rfm.out.connect(comp.after_export);
  endfunction​

endclass : scoreboard