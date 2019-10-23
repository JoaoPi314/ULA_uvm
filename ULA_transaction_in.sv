class ULA_transaction_in extends uvm_sequence_item;​

  rand bit [16:0]  data_in;
  rand_bit [1:0]   reg_sel;
  rand_bit [1:0]   instru;
  rand bit         valid_ula;


  function new(string name = "");​
    super.new(name);​
  endfunction​

  `uvm_object_param_utils_begin(transaction_in)​
    `uvm_field_int(data_in , UVM_UNSIGNED)​
    `uvm_field_int(reg_sel , UVM_UNSIGNED)​
    `uvm_field_int(instru , UVM_UNSIGNED)​
    `uvm_field_int(valid_ula , UVM_UNSIGNED)​
  `uvm_object_utils_end​

  function string convert2string();​
    return $sformatf("{data_in = %d, reg_sel = %d, instru = %d, valid_ula = %d}",data_in, reg_sel, instru, valid_ula);​

  endfunction​

endclass