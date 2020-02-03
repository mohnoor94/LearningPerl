use feature 'say';
use feature "switch";

# arrays:

my @abcs = ('a' .. 'z');
my @nums = (1 .. 10);

say @abcs;
say @nums;

say join(', ', @abcs);
say join(', ', @nums);

my @details = ('Noor', 'Amman', 25, 175);

my ($name, $city, $age, @length) = @details;
say "my info: $name, $city, ...";

for my $info (@details) {
    say $info;
}

say "x" x 10;

foreach my $info (@details) {
    say $info;
}

say "x" x 10;

for (@details) {
    say $_;
}

say "x" x 10;

my @subd = @details[0, 2]; # gimme items at index 0 and index 2
say join ', ', @subd;

@subd = @details[0 .. 2]; # items from 0th to 2nd
say join ', ', @subd;

my @primes = (2,3,5,7,11);
say 'primes: ', join (', ', @primes);
say 'popped: ', join (', ', pop @primes);
say 'primes: ', join (', ', @primes);
say 'pushed - new length -> ', join (', ', push @primes, 13);
say 'primes: ', join (', ', @primes);
say 'first: ', join (', ', shift @primes);
say 'primes: ', join (', ', @primes);
say 'add first - new length -> ', join (', ', unshift @primes, 17);
say 'primes: ', join (', ', @primes);

say 'remove index 0-2 -> ', splice @primes, 0, 3;
say 'primes: ', join (', ', @primes);

say '-' x 10;

say join ' ', ('list', 'of', 'words!');

my $customers = 'Noor Ali Sama Ola';
my @customers_array = split / /, $customers;
say join ', ', @customers_array;

say 'Reversed customers -> ', join ', ',  reverse @customers_array;
say 'Sorted customers -> ', join ', ',  sort @customers_array;
say 'Reverse Sorted customers -> ', join ', ',  reverse sort @customers_array;


say '=' x 20;