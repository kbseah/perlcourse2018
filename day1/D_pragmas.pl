#!/usr/bin/env perl

# "use" tells perl to load specific modules
# Modules (or packages) are simply code written by other people that you can
# re-use, e.g. implementing functions for doing specific tasks
# They save you the trouble of reinventing the wheel

# The following are special modules called "pragmas" which don't load specific
# functions but instead change the behavior of the perl interpreter

use strict;      # Prevents perl from running "unsafe" code
use warnings;    # Informative warning and error messages
use diagnostics; # Even more informative warning and error messages

print "Say something BEFORE the illegal code\n";
print 5 / 0;
print "\n";
print "Say something AFTER the illegal code\n";
