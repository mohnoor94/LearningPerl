use feature 'say';
use feature "switch";

print "Hello World\n";

# scalers:

my $name = 'Mohammad Noor';
my ($age, $city) = (25, 'Amman');
my $my_info = "$name lives on \"$city\"";

print $my_info . "\n";

$my_info = qq{$name lives on "$city" in a defferent way!\n};

print $my_info;

my $multiline_string = <<"END";
This is a
multiline
string - HAHA!
END

say;
say $multiline_string;

say "================";
# switch values:

my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say "$first, $second";

say "================";
# math functions:

say "truncate 6.5 => ", int (6.5);
say "truncate 6.5 => ", int 6.5;

say "random number between 0-10 => ", int rand 11;

say "sqrt 9 = ", sqrt 9;

my $x = 10;
$x += 20;
say "x= ", $x;


say "================";
# condetionals:

my $x = 5;
my $y = 10;

if ($x > $y) {
    say "x > y: $x > $y"
} elsif ($y > $x) {
    say "y > x: $y > $x";
} else {
    say "x = y: $x = $y";
}

say "=============";

if ('a' eq 'b') {
    say "a equal b";
} else {
    say "a doesn't equal b!";
}

unless ('a' eq 'b') {
    say "Obviously, a doesn't equal b!";
}

say ('a' lt 'b' ? 'a is larger than b' : 'b is larger than a');

say "================";
# loops:

for (my $i= 0; $i<10; $i++) {
    print $i . ', ';
}
say;

my $i=0;
while ($i<10) {
    if ($i % 2 == 0) {
        $i++;
        next;  # continue
    }
    if ($i == 7) {last;}  # break
    
    print "$i, ";
    $i++;
}

say "\n";

say "================";
# switch: Given-When

$age = 35;

given ($age) {
    when ($age > 10) {
        say "older than 10!";
        continue;  # check next cases!
    }

    when ($age > 20) {
        say "older than 20!";
        # stop looking!
    }

    when ($age > 30) {
        say "older than 20!";
        # but we did not check this!
    }

    default { say "Nothing special :( "}
}

say "=" x 20;