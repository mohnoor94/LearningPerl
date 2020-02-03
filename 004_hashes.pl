use feature 'say';
use feature "switch";

my %employees = (
    'Ali' => 35,
    'Noor' => 25,
    'Sama' => 20,
    'Ola' => 50
);

say "Noor is $employees{Noor}";
say "Noor is ", $employees{Noor};

$employees{Frank} = 44;

say 'x' x 10;
while (my ($k, $v) = each %employees) {
    say "$k: $v";
}
say 'x' x 10;

# get data from hash:
my @some_ages = @employees{'Noor', 'Sama'};
say 'Ages: ', join(', ', @some_ages);

# convert hash to array:
my @hash_array = %employees;
say 'array from hash -> ', join (', ', @hash_array);

delete $employees {'Ali'};
delete $employees {Sama};

say 'x' x 10;
while (my ($k, $v) = each %employees) {
    say "$k: $v";
}
say 'x' x 10;

say exists $employees{'Noor'} ? 'Noor exists' : 'Noor does not exist!';
say exists $employees{'Sama'} ? 'Sama exists' : 'Sama does not exist!';
say exists $employees{Sama} ? 'Sama exists' : 'Sama does not exist!';

say 'x' x 10;

#keys:
for my $key (keys %employees) {
    if ($employees{$key} == 25) {
        say "hi $key (Noor)"
    }
}
