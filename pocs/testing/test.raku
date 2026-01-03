use lib '.';
use Math;
use Test;

plan 5;

is sum(1, 2), 3, 'sum of 1 and 2 is 3';
is sum(0, 0), 0, 'sum of 0 and 0 is 0';
is sum(-1, 1), 0, 'sum of -1 and 1 is 0';
is sum(10, 20), 30, 'sum of 10 and 20 is 30';
is sum(100, -50), 50, 'sum of 100 and -50 is 50';

done-testing;
