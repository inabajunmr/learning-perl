use RaceHorse;

my $racer = RaceHorse->named('Billy Boy');
$racer->won;
$racer->won;
$racer->won;
$racer->showd;
$racer->showd;
$racer->showd;
$racer->showd;
$racer->lost;
print $racer->name, ' has standings of: ', $racer->standings, ".\n";
