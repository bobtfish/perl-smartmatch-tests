# Tests where the right-hand side of ~~ is an array or arrayref.
use strict;
use warnings;
use 5.010001;
use Test::More 'no_plan';

ok(
  { a => 1, b => 2 } ~~ [ qw(a b) ],
  "{ a => 1, b => 2 } ~~ [ qw(a b) ]",
);

# make sure that we don't care if the key appears many times in rhs
ok(
  { a => 1, b => 2 } ~~ [ qw(a a a b) ],
  "{ a => 1, b => 2 } ~~ [ qw(a a a b) ]",
);
