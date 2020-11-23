package TwoFer;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(two_fer);

sub two_fer {
    my ($name) = @_;
    if (defined $name) {
        print("One for $name, one for me\n");
    }
    else {
        print("One for you, one for me\n");
    }
}

two_fer(@ARGV);

__END__
If you are using perl v5.20 or newer, you
can replace the existing sub declaration
with the following code:

use experimental qw(signatures);

sub two_fer ($name = undef) {}

1;
