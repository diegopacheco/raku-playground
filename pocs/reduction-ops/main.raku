my @nums = 1, 2, 3, 4, 5;

say "Sum: ", [+] @nums;
say "Product: ", [*] @nums;
say "Max: ", [max] @nums;
say "Min: ", [min] @nums;
say "All true: ", [&&] True, True, False;
say "Any true: ", [||] False, False, True;

say "String concat: ", [~] <Hello World>;

say "Running sum: ", [\+] @nums;
say "Running product: ", [\*] @nums;
say "Running max: ", [\max] @nums;

say "Factorial 5: ", [*] 1..5;
say "Sum 1-100: ", [+] 1..100;

say "GCD: ", [gcd] 12, 18, 24;
say "LCM: ", [lcm] 3, 4, 5;

say "Chained <: ", [<] 1, 2, 3, 4;
say "Chained <=: ", [<=] 1, 1, 2, 3;

my @words = <the quick brown fox>;
say "Joined: ", [~] @words.map(* ~ " ");
