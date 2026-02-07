my $str = "42";
my $int = $str.Int;
say "String to Int: $int";

my $num = 3.14;
say "Num to Int: ", $num.Int;
say "Num to Rat: ", $num.Rat;

my @arr = 1, 2, 3;
say "Array to List: ", @arr.List.raku;
say "Array to Set: ", @arr.Set;

my %hash = a => 1, b => 2;
say "Hash pairs: ", %hash.pairs;
say "Hash to List: ", %hash.List;

say "Bool: ", "hello".Bool;
say "Bool: ", "".Bool;
say "Bool: ", 0.Bool;

say "Str from Int: ", 123.Str;
say "Chars: ", 12345.comb;

my $bool-str = True.Str;
say "True as Str: $bool-str";
