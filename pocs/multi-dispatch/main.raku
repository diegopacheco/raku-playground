multi sub greet(Str $name) { say "Hello, $name!"; }
multi sub greet(Int $count) { say "Hello $count times!"; }
multi sub greet() { say "Hello, stranger!"; }

greet("Alice");
greet(3);
greet();

multi sub fib(0) { 0 }
multi sub fib(1) { 1 }
multi sub fib(Int $n where * > 1) { fib($n - 1) + fib($n - 2) }

say "Fib(10): ", fib(10);

multi sub area(Int $side) { $side * $side }
multi sub area(Int $w, Int $h) { $w * $h }
multi sub area(Num $radius) { π * $radius * $radius }

say "Square: ", area(5);
say "Rectangle: ", area(4, 6);
say "Circle: ", area(3.0e0);

multi sub process(@arr) { say "Array: ", @arr.elems; }
multi sub process(%h) { say "Hash: ", %h.keys; }

process([1, 2, 3]);
process({a => 1, b => 2});
