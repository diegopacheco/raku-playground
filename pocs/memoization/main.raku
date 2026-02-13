use experimental :cached;

sub fib($n) is cached {
    return $n if $n < 2;
    return fib($n - 1) + fib($n - 2);
}

say "Fib(10): ", fib(10);
say "Fib(20): ", fib(20);
say "Fib(30): ", fib(30);

sub factorial($n) is cached {
    return 1 if $n <= 1;
    return $n * factorial($n - 1);
}

say "10!: ", factorial(10);
say "15!: ", factorial(15);

sub expensive($x) is cached {
    say "  Computing for $x...";
    return $x * $x;
}

say "First call: ", expensive(5);
say "Second call: ", expensive(5);
say "Third call: ", expensive(5);
say "Different: ", expensive(10);
