my $p1 = start { sleep 0.1; 42 }
my $p2 = start { sleep 0.1; 100 }

my $result = await $p1;
say "Promise 1: $result";

my @promises = (1..5).map: { start { $_ * 10 } }
my @results = await @promises;
say "All results: @results[]";

my $p = Promise.in(0.1).then({ say "Delayed!" });
await $p;

my $kept = Promise.kept(99);
say "Kept: ", await $kept;

my $any = await Promise.anyof($p1, $p2);
say "Any completed";

say "Done";
