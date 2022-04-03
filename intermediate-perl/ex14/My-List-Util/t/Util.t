#!perl

use strict;
use warnings;

use Test::More;
use My::List::Util;

plan tests => 3;

is(My::List::Util->sum((1, 2, 3, 4, 5)), 15, 'sum is 15');
is(My::List::Util->sum(()), 0, 'sum of empty list is 0');

my @array = (1, 2, 3, 4, 5);
my @shuffled = My::List::Util->shuffle(@array);
is(scalar (@shuffled), scalar @array, 'shuffled list has same size as original');
