say sprintf("Integer: %d", 42);
say sprintf("Float: %.2f", 3.14159);
say sprintf("String: %s", "hello");
say sprintf("Padded: %05d", 42);
say sprintf("Hex: %x, %X", 255, 255);
say sprintf("Binary: %b", 10);
say sprintf("Octal: %o", 64);

say sprintf("Multiple: %s is %d", "Answer", 42);
say sprintf("Width: |%10s|", "test");
say sprintf("Left: |%-10s|", "test");

my @items = "apple", "banana", "cherry";
for @items.kv -> $i, $item {
    say sprintf("%2d. %s", $i + 1, $item);
}

say sprintf("Percent: %.1f%%", 75.5);
say sprintf("Sci: %e", 12345.6789);
