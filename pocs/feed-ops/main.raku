my @result = (1..10).grep(* %% 2).map(* ** 2);
say "Traditional: @result[]";

my @fed;
(1..10) ==> grep(* %% 2) ==> map(* ** 2) ==> @fed;
say "Feed forward: @fed[]";

my @back;
@back <== map(* ** 2) <== grep(* %% 2) <== (1..10);
say "Feed backward: @back[]";

my @processed;
(1..20)
    ==> grep(*.is-prime)
    ==> map(* * 10)
    ==> @processed;
say "Primes * 10: @processed[]";

my @words = <hello world foo bar>;
my @upper;
@words ==> map(*.uc) ==> grep(*.chars > 3) ==> @upper;
say "Upper long: @upper[]";

my @pipeline;
(1..100) ==> grep(* %% 3) ==> grep(* %% 5) ==> head(5) ==> @pipeline;
say "Div by 15: @pipeline[]";
