#!/usr/bin/perl

use warnings;
use 5.18.0;
use IO::File;

main(@ARGV);

sub main {
    my $filename = shift || "names.txt";
    error("Cannot open file!") unless $filename;
    my $count = countlines($filename);
    say "There are $count lines on this file: $filename";
}

sub countlines{
    my $filename = shift;
    error("Cannot open file!") unless $filename;
    my $fh = IO::File -> new($filename, "r") or error("Cannot open the file!"); 

    my $count = 0;
    $count++ while($fh -> getline); 

    $fh -> close;

    return $count;
}

sub error {
    my $e = shift || 'unknown error';
    say "$0: $e";
    exit 0;
}
