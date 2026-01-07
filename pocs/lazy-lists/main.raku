my @naturals = 1..*;
say "First 10 naturals: ", @naturals.head(10);

my @evens = (2, 4, 6 ... *);
say "First 5 evens: ", @evens.head(5);

my @squares = (1..*).map(* ** 2);
say "First 10 squares: ", @squares.head(10);

my @primes = (2..*).grep(*.is-prime);
say "First 10 primes: ", @primes.head(10);

my @triangular = [\+] 1..*;
say "First 8 triangular: ", @triangular.head(8);

say "First 10 powers of 2: ", (1, 2, 4, 8 ... *).head(10);

say "Divisible by 3 and 5: ", (1..*).grep(* %% 3).grep(* %% 5).head(5);
