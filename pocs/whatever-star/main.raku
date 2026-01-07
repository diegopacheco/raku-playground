my @nums = 1, 2, 3, 4, 5;

say "Doubled: ", @nums.map(* * 2);
say "Plus 10: ", @nums.map(* + 10);
say "Squared: ", @nums.map(* ** 2);

say "Greater than 3: ", @nums.grep(* > 3);
say "Even: ", @nums.grep(* %% 2);

my &double = * * 2;
say "Double 7: ", double(7);

my &add = * + *;
say "Add 3 + 4: ", add(3, 4);

say "Last: ", @nums[*-1];
say "Second last: ", @nums[*-2];

my @matrix = [1,2], [3,4], [5,6];
say "First of each: ", @matrix.map(*[0]);

say "Sorted desc: ", @nums.sort(-*);

my &between = 5 < * < 10;
say "7 between 5 and 10: ", between(7);
