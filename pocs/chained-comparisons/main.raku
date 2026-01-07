my $x = 5;
say "1 < 5 < 10: ", 1 < $x < 10;
say "10 > 5 > 1: ", 10 > $x > 1;
say "1 <= 5 <= 5: ", 1 <= $x <= 5;

my $age = 25;
say "Is adult (18-65): ", 18 <= $age <= 65;

my $score = 85;
say "B grade (80-89): ", 80 <= $score < 90;

my ($a, $b, $c) = 1, 2, 3;
say "a < b < c: ", $a < $b < $c;
say "a <= b <= c: ", $a <= $b <= $c;

say "Ascending: ", 1 < 2 < 3 < 4;
say "Not ascending: ", 1 < 3 < 2 < 4;

my $temp = 72;
say "Comfortable (68-76): ", 68 <= $temp <= 76;

for 1..10 -> $n {
    say "$n in range 3-7: ", 3 <= $n <= 7;
}
