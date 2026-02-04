my $channel = Channel.new;

start {
    for 1..5 -> $i {
        $channel.send($i);
    }
    $channel.close;
}

react {
    whenever $channel -> $val {
        say "Received: $val";
    }
}

my $ch2 = Channel.new;
$ch2.send("a");
$ch2.send("b");
say "Poll: ", $ch2.poll;
say "Poll: ", $ch2.poll;

say "Done";
