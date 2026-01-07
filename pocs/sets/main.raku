my $set1 = set <apple banana cherry>;
my $set2 = set <banana cherry date>;

say "Set1: $set1";
say "Set2: $set2";

say "Union: ", $set1 ∪ $set2;
say "Intersection: ", $set1 ∩ $set2;
say "Difference: ", $set1 ∖ $set2;
say "Symmetric diff: ", $set1 ⊖ $set2;

say "apple in Set1: ", 'apple' ∈ $set1;
say "grape in Set1: ", 'grape' ∈ $set1;

my $small = set <banana>;
say "Is subset: ", $small ⊂ $set1;

my @unique = (1, 2, 2, 3, 3, 3).unique;
say "Unique: @unique[]";

my $set3 = (1, 2, 3, 2, 1).Set;
say "From list: $set3";
say "Elements: ", $set3.keys;
