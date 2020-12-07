# Declare package 'Bob'
package Bob;

use warnings;
use Exporter 'import';

our @EXPORT_OK = qw(hey);

sub hey {

my ($type) = @_;

%type = (
    scremming => /\p{Uppercase}/,
);

return 'Whoa, chill out!' if $type{scremming};
return 'Whatever.';

}
