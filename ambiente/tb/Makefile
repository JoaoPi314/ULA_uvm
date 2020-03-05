IFS = /home/joaopedro/Documents/ULA_uvm/ambiente/tb/ULA_interface_if.sv \
/home/joaopedro/Documents/ULA_uvm/ambiente/tb/REG_interface_if.sv

PKGS = /home/joaopedro/Documents/ULA_uvm/ambiente/tb/pkg.sv

RTL = /home/joaopedro/Documents/ULA_uvm/ambiente/rtl/ula.sv \
/home/joaopedro/Documents/ULA_uvm/ambiente/rtl/rb.sv \
/home/joaopedro/Documents/ULA_uvm/ambiente/rtl/mux.sv \
/home/joaopedro/Documents/ULA_uvm/ambiente/rtl/datapath.sv 

RUN_ARGS_COMMON = -access +r -input /home/joaopedro/Documents/ULA_uvm/ambiente/tb/shm.tcl \
								+uvm_set_config_int=*,recording_detail,1 -coverage all -covoverwrite

sim: clean
	g++ -g -fPIC -Wall -std=c++0x /home/joaopedro/Documents/ULA_uvm/ambiente/tb/refmod.cpp -shared -o test.so
	xrun -64bit -uvm $(PKGS) $(IFS) $(RTL) /home/joaopedro/Documents/ULA_uvm/ambiente/tb/top.sv -sv_lib test.so \
		+UVM_TESTNAME=simple_test -covtest simple_test $(RUN_ARGS_COMMON)

clean:
	@rm -rf INCA_libs /home/joaopedro/Documents/ULA_uvm/ambiente/tb/waves.shm /home/joaopedro/Documents/ULA_uvm/ambiente/tb/cov_work/ /home/joaopedro/Documents/ULA_uvm/ambiente/tb/*.history /home/joaopedro/Documents/ULA_uvm/ambiente/tb/*.log /home/joaopedro/Documents/ULA_uvm/ambiente/tb/*.key mdv.log imc.log imc.key ncvlog_*.err *.trn *.dsn .simvision/ simvision* xcelium.d simv.daidir *.so *.o *.err

view_waves:
	simvision waves.shm &

view_cover:
	imc &
