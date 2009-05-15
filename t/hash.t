# Tests where the right-hand side of ~~ is an hash or hashref.
use strict;
use warnings;
use 5.010001;
use Test::More 'no_plan';

use Tie::RefHash;

{
  package Smartmatch::Thingie;
  use overload '""' => sub { 'a' }, fallback => 1;
}
{
  my $x = bless {} => 'Smartmatch::Thingie';

  {
    my $ok  = eval { my $sm = $x ~~ $x; 1 };
    my $err = $@;
    like($err, qr{non-overloaded object}, "can't ~~ two non-OL objects");
  }

  {
    tie my %h, 'Tie::RefHash';
    $h{ $x } = 1;
  
    my ($key) = keys %h;
    isa_ok($key, 'Smartmatch::Thingie'); # key is still an obj

    my $ok  = eval { my $sm = %h ~~ %h; 1 };
    my $err = $@;
    ok(!$ok, q{can't %h~~%h if keys include non-OL objects});
    like($err, qr{non-overloaded object}, "can't %h~~%h with non-OL obj keys");

    ok([$x]~~%h, 'obj $x is a key of %h');
  }
}
