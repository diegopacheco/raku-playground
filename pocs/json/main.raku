use JSON::Fast;

class Person {
    has Str $.name;
    has Int $.age;

    method to-hash() {
        return { name => $!name, age => $!age };
    }

    method from-hash(%data) {
        return Person.new(name => %data<name>, age => %data<age>);
    }
}

sub MAIN() {
    my $person = Person.new(name => "Diego", age => 30);

    my $json = to-json($person.to-hash());
    say "Serialized: $json";

    my %parsed = from-json($json);
    my $restored = Person.from-hash(%parsed);
    say "Deserialized: Name={$restored.name}, Age={$restored.age}";
}
