# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
in_V { 
	dir I
	width 16
	depth 3072
	mode ap_memory
	offset 8192
	offset_end 16383
}
out_V { 
	dir O
	width 16
	depth 5
	mode ap_memory
	offset 16384
	offset_end 16399
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


