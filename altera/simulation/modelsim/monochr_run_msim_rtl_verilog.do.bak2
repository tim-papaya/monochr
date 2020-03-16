transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/TIM/Project/fpga_altera/monochr/source {C:/TIM/Project/fpga_altera/monochr/source/vga_test.v}
vlog -vlog01compat -work work +incdir+C:/TIM/Project/fpga_altera/monochr/source {C:/TIM/Project/fpga_altera/monochr/source/pll.v}
vlog -vlog01compat -work work +incdir+C:/TIM/Project/fpga_altera/monochr/db {C:/TIM/Project/fpga_altera/monochr/db/pll_altpll.v}
vcom -93 -work work {C:/TIM/Project/fpga_altera/monochr/source/ram.vhd}
vcom -93 -work work {C:/TIM/Project/fpga_altera/monochr/source/pzs_test.vhd}
vcom -93 -work work {C:/TIM/Project/fpga_altera/monochr/source/monochr.vhd}
vcom -93 -work work {C:/TIM/Project/fpga_altera/monochr/source/memory.vhd}

vlog -vlog01compat -work work +incdir+C:/TIM/Project/fpga_altera/monochr/source {C:/TIM/Project/fpga_altera/monochr/source/testbench_monochr.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench_monochr

add wave *
view structure
view signals
run -all
