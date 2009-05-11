
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

