#!perl 
use Horse;
use Sheep;
my $horse = Horse->named('taro');
$horse->set_color('Black');
print $horse->color, "\n";
$horse->eat('hey');
Sheep->eat('grass');