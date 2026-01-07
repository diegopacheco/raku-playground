grammar Calculator {
    token TOP { <expr> }
    token expr { <term> [ <op> <term> ]* }
    token term { \d+ }
    token op { <[+\-*/]> }
}

my $match = Calculator.parse("3+4*2");
say "Parsed: ", $match;

grammar KeyValue {
    token TOP { <pair>+ % \n }
    token pair { <key> '=' <value> }
    token key { \w+ }
    token value { \N+ }
}

my $data = "name=Diego\nage=30\ncity=Seattle";
my $kv = KeyValue.parse($data);
say "Key-Value parsed: ", $kv ?? "Success" !! "Failed";

grammar CSV {
    token TOP { <line>+ % \n }
    token line { <field>+ % ',' }
    token field { <-[,\n]>* }
}

my $csv = CSV.parse("a,b,c\n1,2,3");
say "CSV lines: ", $csv<line>.elems;
