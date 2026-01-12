if { [llength $argv] == 0 } {
    error "Project name must be specified."
}
set project_name [lindex $argv 0]
set part xcku5p-ffvb676-2-i

create_project $project_name .

set_property PART $part [current_project]

add_files -fileset [get_filesets constrs_1] ./src/ku5p.xdc
set xdc [add_files -fileset [get_filesets constrs_1] ./src/ku5p_bitstream_config.xdc]
set_property USED_IN_SYNTHESIS 0 $xdc

lappend ip_repo_path_list [file normalize ../../xg_mac]
set_property ip_repo_paths $ip_repo_path_list [get_filesets sources_1]
update_ip_catalog

source ./design_top.tcl
make_wrapper -top -fileset sources_1 -import [get_files $project_name.srcs/sources_1/bd/design_top/design_top.bd]
