my $i = 0;
while $i < 5 {
    say "while: $i";
    $i++;
}

my $j = 0;
until $j >= 3 {
    say "until: $j";
    $j++;
}

my $k = 0;
repeat {
    say "repeat-while: $k";
    $k++;
} while $k < 3;

my $count = 0;
loop {
    $count++;
    say "loop: $count";
    last if $count >= 4;
}

for 1..10 -> $n {
    next if $n %% 2;
    say "odd: $n";
    last if $n >= 7;
}
