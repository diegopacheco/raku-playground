my $text = "Hello, World! 123";

say "Chars: ", $text.comb;
say "Words: ", $text.comb(/\w+/);
say "Numbers: ", $text.comb(/\d+/);
say "Non-space: ", $text.comb(/\S+/);

say "Split comma: ", "a,b,c,d".split(",");
say "Split spaces: ", "one two  three".split(/\s+/);
say "Split limit: ", "a:b:c:d".split(":", 2);

say "Comb 2: ", "abcdef".comb(2);
say "Comb 3: ", "123456789".comb(3);

my $csv = "name,age,city";
say "CSV fields: ", $csv.split(",");

my $sentence = "The quick brown fox";
say "Word count: ", $sentence.comb(/\w+/).elems;

say "Keep delim: ", "a1b2c3".split(/\d/, :v);
