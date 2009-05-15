
## Testing Out the New ~~

1.  Clone the perl5 git repository:

    $ git clone git://perl5.git.perl.org/perl.git

    ...that may take a few minutes, the first time.

2.  Check out the smartmatch branch.

    $ git checkout -b smartmatch origin/smartmatch

    You should make sure you're pretty up to date.  This command, for example,
    should print 1:

    $ git log | grep -c ea0c2dbd5f5ac6845ecc7ec6696415bf8e27bd52

3.  Compile that perl.  RJBS does:

      * ./Configure -de -Dusedevel
      * make -j9
      * make test -j9
      * sudo make install

    Now you have perl5.11.0 in your path.

4.  Read the smartmatch spec defined in the pod.
    
    $ perldoc perlsyn

    Grep for "Smart matching in detail"

5.  Write tests exploiting behaviors defined in perlsyn

    Tests are organized into files in ./t *generally* based on the type of
    value on the right hand side of the ~~.  You should feel free to put your
    tests wherever you want.  Nobody is going to be upset because of where it
    is.  More tests is better.

6.  Run: prove -e perl5.11.0

## Simple instructions:

Generate an ssh key if you don't have one already:

   $ ssh-keygen

Install git:

   $ apt-get install git # If you're not using debian, tough :_)

Clone perl:

   $ git clone git://perl5.git.perl.org/perl.git

Get a github account at www.github.com, add your ssh key (found in ~/.ssh/id_dsa.pub)
then click the 'Fork' button on http://github.com/rjbs/perl-smartmatch-tests/tree/master

You'll be taken to your own copy of this repository.

Click the text next to 'Your Clone URL'. This will lightbox the git command you need to run,
e.g.

    git clone git@github.com:bobtfish/perl-smartmatch-tests.git 

This will produce output like:

    mini git $ git clone git@github.com:bobtfish/perl-smartmatch-tests.git
    Enter passphrase for key '/Users/t0m/.ssh/id_dsa': 
    remote: Counting objects: 7, done.
    remote: Compressing objects: 100% (5/5), done.
    remote: Total 7 (delta 0), reused 0 (delta 0)
    Receiving objects: 100% (7/7), done.

Copy and paste this into your terminal. You now have checked out copies of perl to build,
and these tests.

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

