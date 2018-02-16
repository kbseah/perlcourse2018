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

# The other lines in the file describe alignments of short reads against the
# reference sequences. Each alignment line has several fields. For example,
# the first field is QNAME (query sequence name), 5th field is MAPQ (mapping
# quality), and so on.
# Fields are separated by tab characters.

# Full description of the SAM format standard: https://samtools.github.io/hts-specs/SAMv1.pdf

# To run this script, pipe the given example SAM file to the perl script like so:
# cat A1sample.sam | perl C_regex_intro.pl

# The script will read each input line and look for the name of a specific
# reference sequence that we are interested in, called c3657_g1_i1:1-565

my $counter = 0; # Counter for how many lines contain the pattern
while (my $line = <STDIN>) {
  if ($line =~ m/c3657_g1_i1:1-565/) {
      print $line;
      $counter ++;
  }
}

print "There were $counter lines in the file with a match \n";

## EXERCISES####################################################################

# Syntax of a regex statement
# $variable =~ m/something/
#  The '=~' is the regexp operator. Think of it as the "regex" version of == or !=
#  The negation of =~ is simply !=
#  The pattern that you want to match is enclosed inside two slashes //
#  The m preceding the first slash means that you want to *m*atch the pattern
#  There are some special characters that have special meanings in a regexp, and
#   which have to be 'escaped' with a backslash if you want to use them in a
#   pattern. These are: {}[]()^$.|*+?\


# Using variables in a regex
# You can also include variables in the regex match pattern. The following should
# do the same as the example above.

# my $target = "c3657_g1_i1:1-565";
# while (my $line = <STDIN>) {
#   if ($line =~ m/$target/) {
#     print $line;
#   }
# }
