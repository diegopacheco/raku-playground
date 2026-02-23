my &is-positive = * > 0;
my &is-even = * %% 2;
my &square = * ** 2;

say "5 positive: ", is-positive(5);
say "4 even: ", is-even(4);
say "6 squared: ", square(6);

my &composed = * * 2 + 1;
say "Composed(5): ", composed(5);

my @data = -3, -1, 0, 2, 5, 8;
say "Positives: ", @data.grep(* > 0);
say "Negatives: ", @data.grep(* < 0);
say "Abs: ", @data.map(*.abs);

say "First where > 3: ", @data.first(* > 3);
say "All > -5: ", @data.all > -5;

my @pairs = (a => 1, b => 2, c => 3);
say "Keys: ", @pairs.map(*.key);
say "Values: ", @pairs.map(*.value);
