use strict;
use warnings;
use 5.010001;
use Test::More 'no_plan';
use Tie::RefHash;

{
  tie my %refhash, 'Tie::RefHash';
  my $obj = bless {} => 'Class';

  $refhash{ $obj } = 1;

  my $is_obj = sub { ref $_[0] and (ref $_[0]) =~ /[a-z]/ }; # "ha ha ha"

  ok(%refhash ~~ $is_obj, "all keys are blessed");
}


