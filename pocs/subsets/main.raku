subset PositiveInt of Int where * > 0;
subset NonEmptyStr of Str where *.chars > 0;
subset Percentage of Num where 0 <= * <= 100;

sub positive(PositiveInt $n) { say "Positive: $n"; }
positive(5);

sub greeting(NonEmptyStr $name) { say "Hello, $name!"; }
greeting("Alice");

subset Even of Int where * %% 2;
subset Odd of Int where * % 2 == 1;

sub process-even(Even $n) { say "Even: $n"; }
process-even(4);

subset Prime of Int where *.is-prime;
my Prime @primes = (2, 3, 5, 7, 11);
say "Primes: @primes[]";

subset Email of Str where /<[\w.-]>+ '@' <[\w.-]>+/;
sub validate(Email $e) { say "Valid: $e"; }
validate("test@mail.com");

subset Natural of Int where * >= 0;
my Natural $count = 10;
say "Count: $count";
