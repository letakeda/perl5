#!/usr/bin/perl

use 5.18.0;
use warnings;
use IO::File;

my $file = "names.txt";

my $fh = IO::File -> new ($file, "r");

if (!$fh) {
    print("Cannot open file!\n");
}

my $count = 0;

while($fh -> getline) {
    $count++;
}

$fh -> close;
print("There are $count lines in the file: $file\n");

