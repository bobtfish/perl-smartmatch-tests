use strict;
use warnings;
use 5.010001;
use Test::More 'no_plan';
use Test::Exception;

{
    package Foo;
    1;
}

{
    package Bar;
    use overload q|~~| => sub { 1; };
    1;
}

ok(1 ~~ [ 0..2 ], '1 is in [0..2]');
ok(!(1 ~~ undef), '1 is defined');

dies_ok { 1 ~~ bless(\(my $foo), 'Foo') }, 'No overload specified for Foo';
lives_ok { 1 ~~ bless (\(my $bar), 'Bar') }, 'Overloaded ~~ in Bar works';

0;
