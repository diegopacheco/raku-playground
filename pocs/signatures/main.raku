sub required(Str $name) { say "Name: $name"; }
required("Alice");

sub optional(Str $name = "Unknown") { say "Name: $name"; }
optional();
optional("Bob");

sub named(:$first, :$last) { say "Full: $first $last"; }
named(first => "John", last => "Doe");

sub slurpy(*@items) { say "Items: @items[]"; }
slurpy(1, 2, 3, 4);

sub constrained(Int $n where * > 0) { say "Positive: $n"; }
constrained(5);

sub typed(Int $a, Int $b --> Int) { $a + $b }
say "Sum: ", typed(3, 4);

sub destructure(($x, $y)) { say "Point: $x, $y"; }
destructure((10, 20));

sub with-default(:$debug = False) { say "Debug: $debug"; }
with-default();
with-default(:debug);

sub capture(|c) { say "Captured: ", c.raku; }
capture(1, "a", x => 2);
