my $x = 5;
say "Is 3, 5, or 7: ", $x == any(3, 5, 7);
say "Is all positive: ", (1, 2, 3).all > 0;
say "Has even: ", (1, 2, 3).any %% 2;
say "None negative: ", (1, 2, 3).none < 0;
say "One is 2: ", (1, 2, 3).one == 2;

my @nums = 10, 20, 30;
say "All > 5: ", all(@nums) > 5;
say "Any > 25: ", any(@nums) > 25;

my $password = "secret123";
say "Valid length: ", $password.chars == any(8..20);

my @grades = 85, 92, 78, 95;
say "All passing: ", all(@grades) >= 70;
say "Any perfect: ", any(@grades) == 100;

if $x == 5 | 10 | 15 {
    say "x matches junction";
}

my @valid = <red green blue>;
my $color = "green";
say "Valid color: ", $color eq any(@valid);
