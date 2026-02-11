my @a = 1, 2, 3;
my @b = 10, 20, 30;

say "Add: ", @a <<+>> @b;
say "Multiply: ", @a <<*>> @b;
say "Subtract: ", @b <<->> @a;

say "Scalar add: ", @a >>+>> 5;
say "Scalar mul: ", @a >>*>> 2;

say "Negate: ", -<< @a;
say "Increment: ", ++<< @a.clone;

my @words = <hello world>;
say "Uppercase: ", @words>>.uc;
say "Lengths: ", @words>>.chars;

my @nested = [1,2], [3,4];
say "Deep add: ", @nested>>.[0];
