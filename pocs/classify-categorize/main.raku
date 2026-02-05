my @nums = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10;

my %by-parity = @nums.classify({ $_ %% 2 ?? 'even' !! 'odd' });
say "By parity: ", %by-parity;

my %by-range = @nums.classify({
    when * <= 3 { 'low' }
    when * <= 7 { 'mid' }
    default { 'high' }
});
say "By range: ", %by-range;

my @words = <apple banana avocado blueberry cherry>;
my %by-letter = @words.classify(*.substr(0, 1));
say "By first letter: ", %by-letter;

my %multi = @nums.categorize({
    my @cats;
    @cats.push('even') if $_ %% 2;
    @cats.push('div3') if $_ %% 3;
    @cats;
});
say "Categorized: ", %multi;

my @grades = 95, 82, 67, 88, 45, 91;
my %letter = @grades.classify({
    when * >= 90 { 'A' }
    when * >= 80 { 'B' }
    when * >= 70 { 'C' }
    default { 'F' }
});
say "Grades: ", %letter;
