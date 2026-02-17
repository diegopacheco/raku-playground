my $r1 = 1/3;
my $r2 = 2/5;
say "1/3 = $r1";
say "2/5 = $r2";

say "Add: ", $r1 + $r2;
say "Subtract: ", $r2 - $r1;
say "Multiply: ", $r1 * $r2;
say "Divide: ", $r1 / $r2;

say "Numerator: ", $r1.numerator;
say "Denominator: ", $r1.denominator;
say "As Num: ", $r1.Num;

my $rat = 0.1 + 0.2;
say "0.1 + 0.2 = $rat";
say "Exact: ", $rat == 0.3;

my $fat = FatRat.new(1, 10**50);
say "FatRat: ", $fat.raku;
