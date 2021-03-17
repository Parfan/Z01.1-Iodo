onerror {quit -code 1}
source "/home/borg/Documents/Z01.1-Iodo-master/Z01.1-Iodo/vunit_out/test_output/lib.tb_detectordemoedas.all_6c8fae528d5219e6532570151119ee6d6191a5d7/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
