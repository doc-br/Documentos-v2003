#!/usr/bin/perl -T
# (c) Wolfram Schneider, Berlin. June 1996. Public domain.
#
# FreeBSD WWW mirror redirect
#
# $FreeBSD: www/en/cgi/mirror.cgi,v 1.4 2000/12/28 12:35:36 wosch Exp $

$_ = $ENV{'QUERY_STRING'};

s/^[^=]+=//;			# 'variable=value' -> 'value'
s/\+/ /g;			# '+'   -> space
s/%(..)/pack("c",hex($1))/ge;	# '%ab' -> char ab

print "Window-target: _top\n";
print "Location: $_\n";
print "Content-type: text/plain\n\n";

exit 0;
