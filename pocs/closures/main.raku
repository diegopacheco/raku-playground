sub make-adder($n) {
    return -> $x { $x + $n };
}

my &add5 = make-adder(5);
my &add10 = make-adder(10);

say "5 + 3 = ", add5(3);
say "10 + 7 = ", add10(7);

sub make-counter() {
    my $count = 0;
    return { $count++ };
}

my &c1 = make-counter();
my &c2 = make-counter();

say "c1: ", c1();
say "c1: ", c1();
say "c2: ", c2();

my @multipliers = (1..3).map: -> $n { -> $x { $x * $n } };
say "3 * 5 = ", @multipliers[2](5);
