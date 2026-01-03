class Animal {
    has $.name;
    method speak { say "$.name makes a sound"; }
}

class Dog is Animal {
    has $.breed;
    method speak { say "$.name barks!"; }
    method fetch { say "$.name fetches the ball"; }
}

class Cat is Animal {
    method speak { say "$.name meows!"; }
    method scratch { say "$.name scratches"; }
}

role Swimmer {
    method swim { say "$.name swims"; }
}

class Duck is Animal does Swimmer {
    method speak { say "$.name quacks!"; }
}

my $dog = Dog.new(name => "Rex", breed => "German Shepherd");
$dog.speak;
$dog.fetch;
say "Breed: {$dog.breed}";

my $cat = Cat.new(name => "Whiskers");
$cat.speak;
$cat.scratch;

my $duck = Duck.new(name => "Donald");
$duck.speak;
$duck.swim;

my @animals = $dog, $cat, $duck;
for @animals -> $animal {
    $animal.speak;
}
