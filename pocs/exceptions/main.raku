sub divide($a, $b) {
    die "Division by zero!" if $b == 0;
    return $a / $b;
}

try {
    my $result = divide(10, 2);
    say "10 / 2 = $result";
    CATCH {
        default { say "Error: $_"; }
    }
}

try {
    my $result = divide(10, 0);
    say "Result: $result";
    CATCH {
        when X::AdHoc { say "Caught: {.message}"; }
        default { say "Other error: $_"; }
    }
}

sub risky($n) {
    fail "Negative not allowed" if $n < 0;
    return $n.sqrt;
}

my $r = risky(-1);
if $r.defined {
    say "Sqrt: $r";
} else {
    say "Failed: {$r.exception.message}";
}

say "Program continues...";
