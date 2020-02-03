use feature 'say';
use feature "switch";

# sub routines = functions

sub get_random { 
    return int rand 11
}

say 'Random Number: ', get_random;
say 'Random Number: ', get_random;
say 'Random Number: ', get_random;

say '=' x 50;

sub get_random_max {
    my ($max_num) = @_;  # @_ is the recived array of parametes!
    $max_num ||= 20;  # default value if no value received!

    return int rand ($max_num);
}

say 'Random Number: ', get_random_max(100);
say 'Random Number: ', get_random_max();
say 'Random Number: ', get_random_max();

say '=' x 50;

sub get_sum {
    my ($num1, $num2) = @_;

    return $num1 + $num2;
}

say '1 + 2 = ', get_sum(1,2);
say '_ + _ = ', get_sum();

say '=' x 50;

sub sum_any {
    my $sum = 0;
    for (@_) { $sum += $_; }
    return $sum;
}

say 'sum (1..5) = ', sum_any(1,2,3,4,5);
say 'sum (1..5) = ', sum_any(1..5);
say 'sum () = ', sum_any();
say 'sum (10) = ', sum_any(10);
say 'sum (1,3,5) = ', sum_any(1,3,5);

say '=' x 50;
# return multiple values (or return an array instead!):

sub get_multiplications {
    my ($num) = @_;
    return $num * 2, $num * 3;
}

say 'multiplications of 3: ', join (', ', get_multiplications(3));
say 'multiplications of 5: ', join (', ', get_multiplications(5));


say '=' x 50;
# recursive subroutines:

sub factorial {
    my ($num) = @_;
    
    return 0 if $num <= 0;
    return 1 if $num == 1;

    return $num * factorial($num - 1);
}

say 'factorial -5 is: '. factorial(-5);
say 'factorial 1 is: '. factorial(1);
say 'factorial 5 is: '. factorial(5);