#!/usr/local/bin/tclsh8.3
#
# $FreeBSD: www/tools/prstats/cut.tcl,v 1.1 2001/10/29 01:58:12 murray Exp $
#

set t [clock seconds]
set t0 [expr $t - [lindex $argv 0] * 86400]

set fi [open [lindex $argv 1]]
set fo [open [lindex $argv 2] w]
while {[gets $fi a] >= 0} {
	if {[lindex $a 2] > $t0} {
		puts $fo $a
	}
}
