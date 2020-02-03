package Animal::Lion;

use Animal::Cat;

our @ISA = qw(Animal::Cat);  # inherit everything from Cat!

sub getSound {
    my ($self) = @_;
    return $self->{name}, " says Rowrrr!";
}