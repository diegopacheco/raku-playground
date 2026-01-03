my $int = 42;
my $float = 3.14159;
my $rational = 1/3;

say "Integer: $int";
say "Float: $float";
say "Rational: $rational";
say "Rational as decimal: {$rational.Num}";

say "Add: ", 10 + 5;
say "Subtract: ", 10 - 5;
say "Multiply: ", 10 * 5;
say "Divide: ", 10 / 3;
say "Integer divide: ", 10 div 3;
say "Modulo: ", 10 mod 3;
say "Power: ", 2 ** 10;

say "Abs: ", (-5).abs;
say "Round: ", 3.7.round;
say "Floor: ", 3.7.floor;
say "Ceiling: ", 3.2.ceiling;
say "Sqrt: ", 16.sqrt;

my $binary = 0b1010;
my $hex = 0xFF;
my $octal = 0o77;
say "Binary 0b1010: $binary";
say "Hex 0xFF: $hex";
say "Octal 0o77: $octal";
