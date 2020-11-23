package RobotName;
use Moo;

has name => ( is => 'rwp', builder => 1 );

my @CHARS  = 'A' .. 'Z';
my @DIGITS = '0' .. '9';
sub _build_name {
    join "",
        @CHARS[ map int rand @CHARS,  1 .. 2],
        @DIGITS[map int rand @DIGITS, 1 .. 3]
}

sub reset_name {
    my ($self) = @_;
    $self->_set_name(ref($self)->_build_name);
}

__PACKAGE__
