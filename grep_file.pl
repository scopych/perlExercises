#!/usr/bin/perl

use strict;
use warnings;

sub grep_file {
    my $pattern = shift;
    my $file = shift;
    open FILE, $file;
    while (my $line = <FILE>) {
        if ($line =~ m/$pattern/) { print $line }
    }
}

grep_file @ARGV;
