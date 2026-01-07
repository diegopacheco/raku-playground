my $now = DateTime.now;
say "Now: $now";
say "Year: {$now.year}, Month: {$now.month}, Day: {$now.day}";
say "Hour: {$now.hour}, Minute: {$now.minute}, Second: {$now.second.Int}";

my $date = Date.new(2024, 12, 25);
say "Christmas: $date";
say "Day of week: {$date.day-of-week}";
say "Day of year: {$date.day-of-year}";

my $future = $date.later(days => 7);
say "Week later: $future";

my $past = $date.earlier(months => 1);
say "Month earlier: $past";

my $diff = $date - Date.today;
say "Days until Christmas: $diff";

my $dt = DateTime.new(year => 2024, month => 6, day => 15, hour => 14, minute => 30);
say "Formatted: {$dt.yyyy-mm-dd} {$dt.hh-mm-ss}";
