my @a = 1, 2, 3;
my @b = 'a', 'b', 'c';

my @zipped = @a Z @b;
say "Zipped: ", @zipped;

my @added = @a Z+ (10, 20, 30);
say "Zip add: @added[]";

my @multiplied = @a Z* (2, 3, 4);
say "Zip multiply: @multiplied[]";

my @concat = @a Z~ @b;
say "Zip concat: @concat[]";

my @cross = @a X @b;
say "Cross: ", @cross;

my @cross-add = (1, 2) X+ (10, 20);
say "Cross add: @cross-add[]";

my @names = <Alice Bob>;
my @ages = 25, 30;
for @names Z @ages -> ($name, $age) {
    say "$name is $age";
}

my @pairs = (1, 2) X (3, 4);
say "Pairs: ", @pairs;
