#!/usr/bin/perl
# Exercise 1.2 from book " Learn Perl the hard way"

use strict;
use warnings;

sub print_file {
    my $file = shift;
    open FILE, $file;
    while (my $line = <FILE>) {
        print $line;
    }
}

sub print_dir {
    my $dir = shift;
    my @files = glob "$dir/*";
    foreach (@files) {
        print_file $_; 
    }
}
print_dir @ARGV;
