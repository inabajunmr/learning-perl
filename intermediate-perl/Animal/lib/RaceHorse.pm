package RaceHorse;

use 5.006;
use strict;
use warnings;

=head1 NAME

RaceHorse - The great new RaceHorse!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use RaceHorse;

    my $foo = RaceHorse->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

use parent qw(Horse);
use JSON;
use IO::File;
sub named {
  my $self = shift->SUPER::named(@_);
  my %saved = restore($self->name());
  $self->{wins} = $saved{wins};
  $self->{places} = $saved{places};
  $self->{shows} = $saved{shows};
  $self->{losses} = $saved{losses};
  $self;
}
sub restore {
  my $name = shift;
  my $filename = "$name.json";
  if (-e $filename){
    my $fh = IO::File->new($filename, 'r');
    my $json = <$fh>;
    return %{decode_json($json)};
  } else {
    return (
      wins => 0,
      places => 0,
      shows => 0,
      losses => 0,
    )
  }
}
sub won{ shift->{wins}++; }
sub placed{ shift->{places}++; }
sub showd{ shift->{shows}++; }
sub lost{ shift->{losses}++; }
sub standings {
  my $self = shift;
  join ', ', map "$self->{$_} $_", qw(wins places shows losses);
}
sub DESTROY {
  my $self = shift;
  my %recorder = (
    wins => $self->{wins},
    places =>  $self->{places},
    shows =>  $self->{shows},
    losses =>  $self->{losses},
    name => $self->name(),
  );
  my $json = encode_json(\%recorder);
  my $fh = IO::File->new($self->name().".json", 'w');
  print $fh $json;
  $fh->close();
}
=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

inabajunmr, C<< <inabajun.for.regi at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-. at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=.>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc RaceHorse


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=.>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/.>

=item * Search CPAN

L<https://metacpan.org/release/.>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2022 by inabajunmr.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)


=cut

1; # End of RaceHorse
