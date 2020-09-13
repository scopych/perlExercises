#!/usr/bin/perl

use strict;
use warnings;

sub print_file {
    my $file = shift;
    open FILE, $file;
    while (my $line = <FILE>) {
        print $line;
    }
}

sub cat {
    while (my $file = shift) {
        print_file $file;
    }
}

cat @ARGV;
