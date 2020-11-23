#!/usr/bin/perl

use 5.18.0;
use warnings;

my $file = "names.txt";

open(FH, $file);
my @lines = <FH>;
close (FH);

my $count = scalar @lines;
say "There are $count lines in the file: $file";
