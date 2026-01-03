my $text = "Hello World 2024";

if $text ~~ /World/ {
    say "Found 'World'";
}

if $text ~~ /\d+/ {
    say "Match: $/";
}

my $email = "diego@test.com";
if $email ~~ /\w+ '@' \w+ '.' \w+/ {
    say "Valid email pattern: $/";
}

my $str = "cat bat rat";
my $replaced = $str.subst(/at/, 'oo', :g);
say "Replaced: $replaced";

my $data = "apple:10, banana:20, cherry:30";
my @matches = $data.comb(/\w+/);
say "Words: ", @matches;

my $phone = "123-456-7890";
if $phone ~~ /(\d+) '-' (\d+) '-' (\d+)/ {
    say "Area: $0, Exchange: $1, Number: $2";
}
