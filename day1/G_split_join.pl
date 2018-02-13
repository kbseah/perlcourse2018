#!/usr/bin/env perl
use strict;
use warnings;

# Split a string into an array
my $nato = "alpha bravo charlie delta echo foxtrot golf";
my @nato_split = split " ", $nato; # Split by space character
print $nato_split[2];
print "\n";

# Join an array into a string (e.g. for printing out a report)
my $nato_comma = join ",", @nato_split;
print $nato_comma;
print "\n";

# Directly use a join statement inside a print statement:
print join ",", @nato_split;
print "\n";

# Join an array across multiple lines
print join "\n", @nato_split;
print "\n"; # Why do we still need a "\n" at the end?

## EXERCISES ###################################################################

# Split the following string on the tab character
#my $nato2 = "alpha\tbravo\tcharlie\techo\tfoxtrot\golf";

# Split the following string on the commas
#my $nato3 = "alpha,bravo,charlie,echo,foxtrot,golf";

# More complex splits are possible with regular expressions, which will be
# covered on day 3.
# Example: split the following string on either spaces, periods, or commas
#my $sentence = "This is a plain, ordinary English sentence.";
#my @sentence_words = split /[\s,.]+/, $sentence;
#print join " ", @sentence_words;
#print "\n";
