my @nums = 1..10;

say "Pairs: ", @nums.rotor(2);
say "Triplets: ", @nums.rotor(3);
say "With partial: ", @nums.rotor(3, :partial);

say "Sliding 3: ", @nums.rotor(3 => -2);
say "Skip 1: ", @nums.rotor(2 => 1);

say "Mixed: ", (1..12).rotor(2, 3);

my @data = <a b c d e f g h>;
for @data.rotor(2) -> @pair {
    say "Pair: @pair[]";
}

say "Batch 4: ", @nums.batch(4);

my @coords = 1, 2, 3, 4, 5, 6;
my @points = @coords.rotor(2).map({ "({$_[0]}, {$_[1]})" });
say "Points: @points[]";
