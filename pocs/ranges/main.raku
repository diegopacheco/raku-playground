my @simple = 1..5;
say "Simple range: @simple[]";

my @exclusive = 1..^5;
say "Exclusive end: @exclusive[]";

my @chars = 'a'..'e';
say "Char range: @chars[]";

my @sequence = 1, 3, 5 ... 15;
say "Odd sequence: @sequence[]";

my @geometric = 1, 2, 4 ... 64;
say "Geometric: @geometric[]";

my @fib = 1, 1, * + * ... * > 100;
say "Fibonacci: @fib[]";

my @countdown = 10, 9, 8 ... 1;
say "Countdown: @countdown[]";

my @infinite = (1..*).head(5);
say "First 5 of infinite: @infinite[]";

say "Range contains 3: ", 3 ~~ 1..5;
say "Range size: ", (1..100).elems;
