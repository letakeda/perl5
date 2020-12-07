# Declare package 'Bob'
package Bob;

use warnings;
use Exporter 'import';

our @EXPORT_OK = qw(hey);

sub hey {

my ($type) = @_;

%type = (
#   uppercase => /\p{Uppercase}/,
   question => /\?/,
   numeric => /[0-9]/,
   whitespaces => /[ \f\t\v]$/
);

#return 'Whoa, chill out!' if $type{uppercase};
return 'Fine. Be that way!' if $type{whitespaces};
return 'Fine. Be that way!' if $type{question};
return 'Sure.' if $type{numeric};
#return 'Whatever.';

}

hey(@ARGV);
