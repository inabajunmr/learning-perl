package Sample;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
}
sub yeah {
    print "yeah\n";
}
sub AUTOLOAD {
    print "auto\n";
}
1;