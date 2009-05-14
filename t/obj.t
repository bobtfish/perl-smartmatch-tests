use strict;
use warnings;
use 5.010001;
use Test::More 'no_plan';

{
  {
    package Smartmatch::Recorder;
    use overload
      '~~' => sub { our @Recorded = @_; return 1 },
      fallback => 1;
  }
  
  my $x = bless {} => 'Smartmatch::Recorder';

  ok(undef ~~ $x, "everything matches Smartmatch::Recorder obj");
  is_deeply(
    \@Smartmatch::Recorder::Recorded,
    [ $x, undef ],
    "just the expected args to our OL sub"
  );
}
