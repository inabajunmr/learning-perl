#!perl

use strict;
use warnings;

use Test::More;

BEGIN {
    require_ok('Animal') || BAIL_OUT();
}

diag("Testing Animal $Animal::VERSION, Perl $], $^X");

ok(defined &Animal::speak, 'Animal::speak is defined');
ok(defined &Animal::sound, 'Animal::sound is defined');
eval {Animal->sound()} or my $at = $@;
like($at, qr/You must/, 'sound() dies with a message');
eval {Animal->speak()} or my $at = $@;
like($at, qr/You must/, 'speak() dies with a message');

{
    package Foofle;
    use parent qw(Animal);
    use Test::More;

    sub sound {'foof'}
    # is(
    #     Foofle->speak,
    #     "A Foofle goes foof!\n",
    #     'An Animal subclass does the right thing'
    # );

}

plan tests => 5;
