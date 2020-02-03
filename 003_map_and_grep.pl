use feature 'say';
use feature "switch";

# Grep and Map!!
my @nums = (1..10);
my @oods = grep {$_ % 2} @nums;
my @doubles = map {$_ * 2} @nums;

say 'numbers -> ', join ', ', @nums;
say 'odds -> ', join ', ', @oods;
say 'doubles -> ', join ', ', @doubles;

# update the array itself!
$_ *= 3 for @nums;
say 'triples -> ', join ', ', @nums;
