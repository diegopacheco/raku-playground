enum Color <Red Green Blue>;
enum Size (Small => 1, Medium => 2, Large => 3);
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5, Sat => 6, Sun => 7);

say "Red value: ", Red.value;
say "Blue value: ", Blue.value;
say "Color name: ", Color(1);

my $size = Medium;
say "Size: $size = ", $size.value;

say "All colors: ", Color.enums;
say "All sizes: ", Size.enums.keys;

my $today = Wed;
say "Today: $today";
say "Is weekend: ", $today == Sat | Sun;

given $size {
    when Small { say "S"; }
    when Medium { say "M"; }
    when Large { say "L"; }
}

for Day.enums.kv -> $name, $val {
    say "$name = $val";
}
