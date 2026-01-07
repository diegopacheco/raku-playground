my @evens = gather {
    for 1..10 -> $n {
        take $n if $n %% 2;
    }
}
say "Evens: @evens[]";

my @fib = gather {
    my ($a, $b) = 0, 1;
    loop {
        take $a;
        ($a, $b) = ($b, $a + $b);
        last if $a > 100;
    }
}
say "Fibonacci: @fib[]";

my @tree = gather {
    sub traverse(@node) {
        take @node[0];
        traverse($_) for @node[1..*];
    }
    traverse([1, [2, [4], [5]], [3, [6]]]);
}
say "Tree: @tree[]";

my @pairs = gather for 1..3 -> $i {
    for 1..3 -> $j {
        take "$i-$j";
    }
}
say "Pairs: @pairs[]";

my @filtered = gather for 1..20 {
    take $_ if .is-prime;
}
say "Primes: @filtered[]";
