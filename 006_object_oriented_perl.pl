use feature 'say';
use feature "switch";

use lib 'lib';
use Animal::Cat;
use Animal::Lion;

my $lolo_caty = new Animal::Cat('Lolo Caty', 'Noor');

say $lolo_caty->getName();
$lolo_caty->setName('Loloaa');
say $lolo_caty->getName();
say $lolo_caty->getSound();

say '=' x 20;

my $king = new Animal::Lion('King', 'Ali');
say $king->getName();
say $king->getSound();