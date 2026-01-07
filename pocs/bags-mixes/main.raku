my $bag = bag <apple apple banana cherry cherry cherry>;
say "Bag: $bag";
say "Apple count: ", $bag<apple>;
say "Cherry count: ", $bag<cherry>;

my $bag2 = bag <apple banana date>;
say "Union: ", $bag (+) $bag2;
say "Intersection: ", $bag (&) $bag2;

say "Total items: ", $bag.total;
say "Unique items: ", $bag.elems;
say "Keys: ", $bag.keys;

my %weights = a => 1.5, b => 2.7, c => 0.3;
my $mix = %weights.Mix;
say "Mix: $mix";
say "Mix a: ", $mix<a>;

my @words = <the the the a a an>;
my $word-bag = @words.Bag;
say "Word counts: ", $word-bag;

for $bag.kv -> $item, $count {
    say "$item: $count";
}

say "Pick random: ", $bag.pick;
say "Roll 3: ", $bag.roll(3);
