class ULA_transaction_out extends uvm_sequence_item;​

  rand bit [7:0] data_out;​
  rand bit       valid_out;

  function new(string name = "");​
    super.new(name);​

  endfunction​

  `uvm_object_param_utils_begin(transaction_out)​
    `uvm_field_int(data_out, UVM_UNSIGNED)​
    `uvm_field_int(valid_out, UVM_UNSIGNED)
  `uvm_object_utils_end​

  function string convert2string();​
    return $sformatf("{result = %d, valid_out = %d}",data_out, valid_out);​

  endfunction​

endclass