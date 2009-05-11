use strict;
use warnings;
use 5.010001;
use Test::More 'no_plan';

ok(1 ~~ [ 0..2 ], '1 is in [0..2]');
