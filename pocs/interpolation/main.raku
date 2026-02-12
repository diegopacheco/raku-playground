my $name = "Alice";
my $age = 30;
say "Name: $name, Age: $age";

my @nums = 1, 2, 3;
say "Array: @nums[]";
say "Joined: @nums.join(', ')";

my %data = lang => "Raku", year => 2015;
say "Hash key: %data<lang>";

say "Expression: {$age * 2}";
say "Method: {$name.uc}";
say "Condition: {$age > 18 ?? 'adult' !! 'minor'}";

my $literal = 'No $interpolation here';
say $literal;

my $multi = qq:to/END/;
Hello $name!
You are $age years old.
END
say $multi;
