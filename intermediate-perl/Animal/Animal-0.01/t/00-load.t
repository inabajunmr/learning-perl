#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 5;


BEGIN {
    my @classes = qw(Animal Cow Sheep Horse Mouse);
    foreach my $class (@classes) {
        use_ok( $class ) || print "Bail out!\n";
    }
}

diag( "Testing Animal $Animal::VERSION, Perl $], $^X" );
