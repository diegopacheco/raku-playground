sub counter() {
    state $count = 0;
    $count++;
    return $count;
}

say "Counter: ", counter();
say "Counter: ", counter();
say "Counter: ", counter();

sub id-gen(Str $prefix) {
    state %counters;
    %counters{$prefix}++;
    return "$prefix-{%counters{$prefix}}";
}

say id-gen("user");
say id-gen("user");
say id-gen("order");
say id-gen("user");

sub cached-fib($n) {
    state %cache = 0 => 0, 1 => 1;
    %cache{$n} //= cached-fib($n - 1) + cached-fib($n - 2);
}

say "Fib(20): ", cached-fib(20);
