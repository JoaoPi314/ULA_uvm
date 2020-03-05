#!/bin/sh

if [ ! -n "$UVM_HOME" ]; then
   UVM_HOME=`ncroot`/tools/uvm-1.1
   export UVM_HOME
fi

snapshot_path="$BRUN_SESSION_DIR/session_build"

if [ ! -d $snapshot_path ] 
then 
  echo "Creating NCLIBDIRPATH = $snapshot_path" 
  mkdir -p $snapshot_path 
fi

echo "Using NCLIBDIRPATH = $snapshot_path" 

gmake -f  /home/joaopedro/Documents/ULA_uvm/ambiente/tb/Makefile 

