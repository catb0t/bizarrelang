#This page tells you how to compile bizarre from source.

# Compiling From Source #

If you're itching to get your hands on a new copy of Bizarre's source code then look no further than this page!


# What you will need #

Obviously you're going to need a few things before you can start compiling. Luckily the you only need two!

  * [Free Pascal Compiler](http://freepascal.org/) or [Lazarus IDE](http://lazarus.freepascal.org/) for compiling.
  * [Subversion](http://subversion.apache.org/) for getting the source.
# Getting the source #

Firstly you're going to need the source! Assuming you have Subversion installed all you have to do is enter this into the console `svn checkout http://bizarrelang.googlecode.com/svn/trunk/ bizarrelang-read-only`

# Compiling #

You now have the source. Compiling is quite simple, in the Free Pascal Compiler you need to change the extension of bizarre.lpr to bizarre.pas. You can then simply run this command in your terminal `fpc compile bizarre.pas` In Lazarus one must simply double click bizarre.lpr, wait for Lazarus run, then hit Ctrl + F9 on your keyboard to compile (otherwise you could compile under the 'run' tab).