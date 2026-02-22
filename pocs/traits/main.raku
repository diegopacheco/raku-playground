class Item {
    has $.name is required;
    has $.price is required;
    has $.stock is rw = 0;
}

my $item = Item.new(name => "Widget", price => 9.99);
$item.stock = 100;
say "Item: {$item.name}, Price: {$item.price}, Stock: {$item.stock}";

sub frozen($x is copy) {
    $x = $x * 2;
    return $x;
}
my $val = 5;
say "Original: $val, Doubled: ", frozen($val);

sub modify(@arr is raw) {
    @arr[0] = 999;
}
my @data = 1, 2, 3;
modify(@data);
say "Modified: @data[]";

class Config {
    has %.settings is default({});
}
my $cfg = Config.new;
say "Default: ", $cfg.settings.raku;
