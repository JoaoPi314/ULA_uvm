class ULA_transaction_out extends uvm_sequence_item;​

  rand bit [31:0] data_out;​ 
  
  function new(string name = "");​
    super.new(name);​

  endfunction​

  `uvm_object_param_utils_begin(transaction_out)​
    `uvm_field_int(data, UVM_UNSIGNED)​
    `uvm_field_int(valid_out, UVM_UNSIGNED)
  `uvm_object_utils_end​

  function string convert2string();​
    return $sformatf("{data_o = %d, valid_out = %d}",data, valid_out);​

  endfunction​

endclass