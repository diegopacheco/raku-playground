my $pair = name => "Alice";
say "Pair: ", $pair.raku;
say "Key: ", $pair.key;
say "Value: ", $pair.value;

my @pairs = a => 1, b => 2, c => 3;
say "Pairs: ", @pairs;

my %from-pairs = @pairs;
say "Hash from pairs: ", %from-pairs;

my $colon = :enabled;
say "Colon pair: ", $colon;
say "Bool value: ", $colon.value;

my $neg = :!debug;
say "Negated: ", $neg;

sub config(:$host, :$port = 8080) {
    say "Host: $host, Port: $port";
}
config(:host<localhost>, :port(3000));

my @list = <apple banana cherry>;
say "List: @list[]";
say "Elems: ", @list.elems;
