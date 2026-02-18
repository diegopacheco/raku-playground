sub factorial($n) {
    return 1 if $n <= 1;
    return $n * factorial($n - 1);
}
say "5! = ", factorial(5);

sub sum-list(@arr) {
    return 0 unless @arr;
    return @arr[0] + sum-list(@arr[1..*]);
}
say "Sum: ", sum-list([1, 2, 3, 4, 5]);

sub tree-sum(@node) {
    return @node[0] + [+] @node[1..*].map(&tree-sum);
}
my @tree = [1, [2, [4], [5]], [3, [6]]];
say "Tree sum: ", tree-sum(@tree);

sub gcd($a, $b) {
    return $a if $b == 0;
    return gcd($b, $a mod $b);
}
say "GCD(48, 18): ", gcd(48, 18);

sub reverse-str($s) {
    return $s if $s.chars <= 1;
    return $s.substr(*-1) ~ reverse-str($s.substr(0, *-1));
}
say "Reverse: ", reverse-str("hello");
