use RaceHorse;

my $racer = RaceHorse->named('Billy Boy');
$racer->won;
$racer->won;
$racer->won;
$racer->showed;
$racer->showed;
$racer->showed;
$racer->showed;
$racer->lost;
print $racer->name, ' has standings of: ', $racer->standings, ".\n";
