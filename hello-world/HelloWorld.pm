# Declare package 'HelloWorld'
package HelloWorld;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<hello>;

sub hello {
	printf("Hello World\n");
}

hello();

1;