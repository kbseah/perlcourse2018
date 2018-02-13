#!/usr/bin/env perl
use strict;
use warnings;

# Read multiple lines from STDIN
# Shell command: cat phone_book.tab | perl D_read_stdin_lines.pl
my $linecounter = 0;
while (my $line = <STDIN>) {
  $linecounter++; # Count how many lines have been read
}
print "The input had $linecounter lines.\n";

## EXERCISES ###################################################################

# The function length($something) can be used to find the length of a string in
# characters. Use this to make a counter that counts the characters in an input
# BONUS: count the number of words, too (hint: split and scalar)
