my $age = 25;

if $age >= 18 {
    say "Adult";
} else {
    say "Minor";
}

my $score = 85;
if $score >= 90 {
    say "Grade: A";
} elsif $score >= 80 {
    say "Grade: B";
} elsif $score >= 70 {
    say "Grade: C";
} else {
    say "Grade: F";
}

my $x = 10;
say $x > 5 ?? "Greater" !! "Smaller";

given $age {
    when * < 13 { say "Child"; }
    when * < 20 { say "Teenager"; }
    when * < 60 { say "Adult"; }
    default { say "Senior"; }
}
