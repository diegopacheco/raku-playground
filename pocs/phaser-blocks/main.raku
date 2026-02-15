say "Main code starts";

BEGIN { say "BEGIN: Compile time" }
END { say "END: Program ending" }

for 1..3 -> $i {
    FIRST { say "FIRST: Loop starting" }
    LAST { say "LAST: Loop ending" }
    say "Iteration: $i";
}

sub risky($n) {
    ENTER { say "  ENTER sub with $n" }
    LEAVE { say "  LEAVE sub" }
    return $n * 2;
}
say "Result: ", risky(5);

for 1..3 -> $i {
    NEXT { say "NEXT: Moving to next" }
    say "Value: $i";
}

say "Main code ends";
