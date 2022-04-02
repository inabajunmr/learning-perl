#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Cow' ) || print "Bail out!\n";
}

diag( "Testing Cow $Cow::VERSION, Perl $], $^X" );
