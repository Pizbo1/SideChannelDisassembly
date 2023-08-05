
create_pblock pblock_target
add_cells_to_pblock [get_pblocks pblock_target] [get_cells -quiet [list system_i/target]]
resize_pblock [get_pblocks pblock_target] -add {SLICE_X50Y25:SLICE_X79Y74}
resize_pblock [get_pblocks pblock_target] -add {DSP48_X2Y10:DSP48_X2Y29}
create_pblock pblock_RO_0
add_cells_to_pblock [get_pblocks pblock_RO_0] [get_cells -quiet [list system_i/RO_25_0]]
resize_pblock [get_pblocks pblock_RO_0] -add {SLICE_X80Y50:SLICE_X103Y74}
create_pblock pblock_RO_1
add_cells_to_pblock [get_pblocks pblock_RO_1] [get_cells -quiet [list system_i/RO_25_1]]
resize_pblock [get_pblocks pblock_RO_1] -add {SLICE_X54Y75:SLICE_X79Y99}
create_pblock pblock_RO_3
add_cells_to_pblock [get_pblocks pblock_RO_3] [get_cells -quiet [list system_i/RO_25_3]]
resize_pblock [get_pblocks pblock_RO_3] -add {SLICE_X54Y0:SLICE_X79Y24}
create_pblock pblock_RO_2
add_cells_to_pblock [get_pblocks pblock_RO_2] [get_cells -quiet [list system_i/RO_25_2]]
resize_pblock [get_pblocks pblock_RO_2] -add {SLICE_X24Y26:SLICE_X49Y49}
create_pblock pblock_RO_sync
add_cells_to_pblock [get_pblocks pblock_RO_sync] [get_cells -quiet [list system_i/RO_25_sync_0]]
resize_pblock [get_pblocks pblock_RO_sync] -add {SLICE_X24Y52:SLICE_X49Y74}


create_waiver -type DRC -id {LUTLP-1} -user "brand" -desc "computational loop waiver for the ring oscillators" -strings { "*" } -timestamp "Sun Jan 30 13:06:00 GMT 2022"
