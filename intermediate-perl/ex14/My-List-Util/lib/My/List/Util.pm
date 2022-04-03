package My::List::Util;

use 5.006;
use strict;
use warnings;
use List::Util qw(shuffle);

=head1 NAME

My::List::Util - List Utility for learning

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS
    use My::List::Util;

    my $sum = My::List::Util->sum((1,2,3));
    my $shuffle = My::List::Util->shuffle((1,2,3));

=head1 SUBROUTINES/METHODS

=head2 sum

sum is caluculate sum from number list.

=cut

sub sum {
  my $class = shift;
  my $sum = 0;
  foreach my $val (@_) {
    $sum += $val;
  }
  return $sum;
}

=head2 shuffle
sum is generated shuffled list from list.

=cut

sub shuffle {
  shift;
  return List::Util::shuffle @_;
}

=head1 AUTHOR

inabajunmr, C<< <inabajun.for.regi at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-my-list-util at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=My-List-Util>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc My::List::Util


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=My-List-Util>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/My-List-Util>

=item * Search CPAN

L<https://metacpan.org/release/My-List-Util>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2022 by inabajunmr.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)


=cut

1; # End of My::List::Util
