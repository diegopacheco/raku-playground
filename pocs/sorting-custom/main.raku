my @nums = 5, 2, 8, 1, 9, 3;
say "Ascending: ", @nums.sort;
say "Descending: ", @nums.sort.reverse;
say "By neg: ", @nums.sort(-*);

my @words = <banana Apple cherry APPLE>;
say "Default: ", @words.sort;
say "Case insensitive: ", @words.sort(*.lc);

my @people = { name => "Bob", age => 30 },
             { name => "Alice", age => 25 },
             { name => "Charlie", age => 35 };

say "By age: ", @people.sort(*<age>).map(*<name>);
say "By name: ", @people.sort(*<name>).map(*<name>);

my @mixed = "a10", "a2", "a1", "a20";
say "Natural sort: ", @mixed.sort({ .comb(/\d+/).head.Int });

my @tuples = (1, "z"), (2, "a"), (1, "a");
say "Multi-key: ", @tuples.sort({ .[0], .[1] });
