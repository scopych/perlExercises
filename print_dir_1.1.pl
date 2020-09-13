#!/usr/bin/perl
# Exercise 1.1 from book " Learn Perl the hard way"

use strict;
use warnings;

sub print_dir {
    my $dir = shift;
    my @files = glob "$dir/*";
    foreach (@files) {
        print "$_\n";
    }
}

print_dir @ARGV;
