package Sample;
use Exporter qw(import);
our @EXPORT = qw(yeah1 yeah2 yeah3 wow1 wow2 wow3);
our %EXPORT_TAGS = (
    yeah => [qw(yeah1 yeah2 yeah3)],
    wow => [qw(wow1 wow2 wow3)],
    one => [qw(yeah1 wow1)],
);
sub yeah1 {}
sub yeah2 {}
sub yeah3 {}
sub wow1 {}
sub wow2 {}
sub wow3 {}
1;
