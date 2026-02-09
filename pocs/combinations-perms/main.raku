my @items = <A B C D>;

say "Combinations of 2:";
for @items.combinations(2) -> @c {
    say "  @c[]";
}

say "All combinations: ", @items.combinations.elems;

say "Permutations of 3:";
my @short = <X Y Z>;
for @short.permutations -> @p {
    say "  @p[]";
}

say "Pairs: ", (1, 2, 3).combinations(2).List;
say "Perm count (4!): ", @items.permutations.elems;

my @dice = 1..6;
say "Dice pairs: ", @dice.combinations(2).elems;

my @letters = <a b c>;
say "All orderings: ", @letters.permutations.map(*.join).List;
