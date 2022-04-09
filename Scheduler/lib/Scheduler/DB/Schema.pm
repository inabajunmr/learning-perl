package Scheduler::DB::Schema;
use strict;
use warnings;
use utf8;
use Time::Piece; # (1)

use Teng::Schema::Declare;

base_row_class 'Scheduler::DB::Row';

table {
    name 'schedules';
    pk 'id';
    columns qw(id title date);
    inflate 'date' => sub {                      #
        my $col_value = shift;                   # (2)
        Time::Piece->strptime($col_value, '%s'); #
    };                                           #    

    deflate 'date' => sub {
        my $date = shift;
        Time::Piece->strptime($date, '%Y/%m/%d')->epoch; # (3)
    }
};

1;
