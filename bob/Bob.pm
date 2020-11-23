# Declare package 'Bob'
package Bob;

use strict;
use warnings;
use Exporter 'import';

our @EXPORT_OK = qw(hey);

sub hey {
    my ($msg) = @_;
    return print("Hey\n");   # Replace this with your own code to pass the tests.
}

say "Takeda";

hey(@ARGV);
