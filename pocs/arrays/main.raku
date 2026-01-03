my @nums = 1, 2, 3, 4, 5;
say "Array: ", @nums;
say "First: ", @nums[0];
say "Last: ", @nums[*-1];
say "Length: ", @nums.elems;

@nums.push(6);
say "After push: ", @nums;

my $popped = @nums.pop;
say "Popped: $popped";

@nums.unshift(0);
say "After unshift: ", @nums;

my @squared = @nums.map(* ** 2);
say "Squared: ", @squared;

my @evens = @nums.grep(* %% 2);
say "Evens: ", @evens;

my $sum = @nums.reduce(* + *);
say "Sum: $sum";

my @sorted = (5, 2, 8, 1, 9).sort;
say "Sorted: ", @sorted;
