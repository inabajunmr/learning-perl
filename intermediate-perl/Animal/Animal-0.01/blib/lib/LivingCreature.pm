package LivingCreature;

use 5.006;
use strict;
use warnings;

=head1 NAME

LivingCreature - The great new LivingCreature!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use LivingCreature;

    my $foo = LivingCreature->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub speak {
  my $class = shift;
  my $message = shift;
  if (defined $message) {
    print "$class, $message\n";
  } else {
      print "a $class goes ", $class->sound, "!\n";
  }
}

=head1 AUTHOR

inabajunmr, C<< <inabajun.for.regi at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-animal at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=Animal>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc LivingCreature


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=Animal>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/Animal>

=item * Search CPAN

L<https://metacpan.org/release/Animal>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2022 by inabajunmr.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)


=cut

1; # End of LivingCreature
