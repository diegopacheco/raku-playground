my $filename = "test.txt";
spurt $filename, "Line 1\nLine 2\nLine 3\n";
say "File written";

my $content = slurp $filename;
say "Content:\n$content";

my @lines = $filename.IO.lines;
say "Lines: ", @lines;
say "Line count: ", @lines.elems;

for $filename.IO.lines.kv -> $i, $line {
    say "Line $i: $line";
}

say "File exists: ", $filename.IO.e;
say "Is file: ", $filename.IO.f;
say "File size: ", $filename.IO.s;

$filename.IO.spurt("Appended\n", :append);
say "After append:\n", slurp $filename;

unlink $filename;
say "File deleted: ", !$filename.IO.e;
