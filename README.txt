
## Testing Out the New ~~

1.  Clone the perl5 git repository:

    $ git clone git://perl5.git.perl.org/perl.git

    ...that may take a few minutes, the first time.

2.  Check out the smartmatch branch.

    $ git checkout origin/smartmatch

    You should make sure you're pretty up to date.  This command, for example,
    should print 1:

    $ git log | grep -c ea0c2dbd5f5ac6845ecc7ec6696415bf8e27bd52

3.  Compile that perl.  RJBS does:

      * ./Configure -de -Dusedevel
      * make -j9
      * make test -j9
      * sudo make install

    Now you have perl5.11.0 in your path.

4.  Run: prove -e perl5.11.0

