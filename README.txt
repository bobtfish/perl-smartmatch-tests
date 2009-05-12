
## Testing Out the New ~~

  15:39 <@rgs> make sure you forked from latest commit in smartmatch
  15:39 <@rgs> that is, ea0c2dbd5f5ac6845ecc7ec6696415bf8e27bd52

  Compile that perl.  RJBS does:

    * ./Configure -de -Dusedevel
    * make -j9
    * make test -j9
    * sudo make install

  Now you have perl5.11.0 in your path.

  Run: prove -e perl5.11.0

## Simple instructions:

Install git:

   $ apt-get install git # If you're not using debian, tough :_)

Clone perl:

   $ git clone git://perl5.git.perl.org/perl.git

Get a github account at www.github.com, then click the 'Fork' button on
http://github.com/rjbs/perl-smartmatch-tests/tree/master

You'll be taken to your own copy of this repository.

Click the text next to 'Your Clone URL'. This will lightbox the git command you need to run,
e.g.

    git clone git@github.com:bobtfish/perl-smartmatch-tests.git 

Copy and paste this into your terminal. You now have checked out copies of perl to build,
and these tests.

