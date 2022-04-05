package Oogaboogoo::calendar;
use Exporter qw(import);
our @EXPORT = qw(number_to_day_name number_to_month_name);
our %EXPORT_TAGS = (
    all => \@EXPORT,
);

my @day = qw(ark dip waq sen pop sep kir);
sub number_to_day_name {
    my $len = @day;
    my $num = shift;
    die "need to specify 0~".($len-1) if $num >= $len;
    
    return $day[$num];
}

my @month = qw(diz pod bod rod sip wax lin sen kun fiz nap dep);
sub number_to_month_name {
    my $len = @month;
    my $num = shift;
    die "need to specify 0~".($len-1) if $num >= $len;
    return $month[$num];
}


1;