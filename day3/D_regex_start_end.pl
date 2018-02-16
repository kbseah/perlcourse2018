#!/usr/bin/env perl
use strict;
use warnings;

# Recall that some special characters have to be 'escaped' with a backslash
# if you want to use them in a regex pattern: {}[]()^$.|*+?\
# Here we'll see what two of them are used for

# Again we'll be using the SAM file for this example (see README.md)
# Make sure you have the file A1sample.sam in the same folder as the script

# The SAM file contains header lines that start with the @ character
# However if you try to find lines that match the @, you'll get more than just
# the header lines.

# Match only the _beginning_ of a line with the ^ character:
my $file = "A1sample.sam";

open (INPUT, "<", $file) or die ("$!");
my $counter = 0;
while (my $line = <INPUT>) {
  if ($line =~ m/^@/) { # Read this as "if $line matches @ at the beginning of the line ..."
    #print $line;
    $counter++;
  }
}
close (INPUT);
print "There are $counter header lines in the file \n\n";


# We can match the ends of lines with the $ character, e.g. we want to find
# lines that end with the string "LN:1588"

print "Now looking for lines that end with LN:1588 ... \n";
open (INPUT2, "<", $file) or die ("$!");
while (my $line = <INPUT2>) {
  if ($line =~ m/LN:1588$/) {
    print $line;
  }
}
close (INPUT2);
