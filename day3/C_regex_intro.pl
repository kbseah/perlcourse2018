#!/usr/bin/env perl
use strict;
use warnings;

# The SAM file contains header lines that (among other things) describe the
# reference sequences against which the short reads have been aligned, examples:
# @SQ     SN:c99568_g1_i1:1-690   LN:689
# @SQ     SN:c81529_g1_i1:1-341   LN:340
# @SQ     SN:c375_g1_i1:1-428     LN:427

# Some notes:
# All header lines begin with @ character
# The tag @SQ means that this line describes a reference sequence
# The tag LN: describes the length of the sequence

# To run this script, pipe the given example SAM file to the perl script like so:
# cat A1sample.sam | perl C_regex_intro.pl

# The script will read each input line and count how many header lines there are
my $counter = 0;
while (my $line = <STDIN>) {
  if ($line =~ m/^@/) {
      $counter ++;
  }
}

print "There were $counter header lines in the file\n";
