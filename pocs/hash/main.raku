my %person = name => "Diego", age => 30, city => "Seattle";
say %person;
say "Name: %person<name>";
say "Age: %person<age>";

%person<country> = "USA";
say "Country: %person<country>";

say "Keys: ", %person.keys;
say "Values: ", %person.values;

for %person.kv -> $key, $value {
    say "$key => $value";
}
