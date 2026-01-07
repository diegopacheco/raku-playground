my $supply = supply {
    for 1..5 -> $i {
        emit $i;
    }
}

$supply.tap(-> $v { say "Got: $v" });

my $s = Supplier.new;
$s.Supply.tap(-> $v { say "Received: $v" });
$s.emit(1);
$s.emit(2);
$s.emit(3);

react {
    whenever Supply.interval(0.1).head(5) -> $tick {
        say "Tick: $tick";
    }
}

my @results;
react {
    whenever supply { emit 10; emit 20; emit 30; } -> $v {
        @results.push($v * 2);
    }
}
say "Results: @results[]";

say "Done";
