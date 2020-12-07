# Declare package 'Bob'
package Bob;

use warnings;
use Switch;

our @EXPORT_OK = qw(hey);

sub hey {

my ($question) = @_;

switch ($question) {
    case "How are you?"		{ print "Sure\n" }   
    case /^\p{Uppercase}+$/     { print "Whoa, chill out!\n" }   
    case "" 			{ print "Fine. Be that way!\n" }
    case /\?+$/                 { print "Calm down, I know what I'm doing!\n" }
    else 	 		{ print "Whatever.\n" }
}

}

hey(@ARGV);
