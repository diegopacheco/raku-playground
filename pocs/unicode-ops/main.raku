my $str = "Hello";
say "String: $str";
say "Chars: ", $str.chars;
say "Codes: ", $str.codes;
say "NFC: ", $str.NFC.list;

my $emoji = "cafe";
say "Cafe: $emoji, chars: {$emoji.chars}";

my $unicode = "HELLO";
say "Lowercase: ", $unicode.lc;
say "Titlecase: ", "hello world".tc;
say "Wordcase: ", "hello world".wordcase;

say "Alpha: ", "Hello".comb.grep(*.uniprop eq 'Lu' | 'Ll');

my $mixed = "Hello123";
say "Letters only: ", $mixed.comb.grep(/<:L>/).join;
say "Digits only: ", $mixed.comb.grep(/<:N>/).join;

say "Ord of A: ", 'A'.ord;
say "Chr of 65: ", 65.chr;

my @codepoints = "ABC".ords;
say "Codepoints: @codepoints[]";

say "Is letter: ", 'a'.uniprop('Alphabetic');
say "Is digit: ", '5'.uniprop('Numeric_Type');
