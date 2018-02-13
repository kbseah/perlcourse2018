#!/usr/bin/env perl
use strict;
use warnings;

# Example 1 ####################################################################
my $file = "phone_book.tab"; # Give the name of the file
my $linecounter = 0;
# Open the file
open(INPUT, "<", $file);
# The open command has three parameters:
#   a FILEHANDLE (in all caps)
#   the mode - "<" means read
#   the filename
while (my $line = <INPUT>) { # Input is read line-by-line
  chomp $line; # Remove the newline character at the end of each line
  $linecounter ++; # Increment the counter
  print "Line number $linecounter is: $line \n";
}
close(INPUT);

# Example 2 ####################################################################

# Use the 'die' command to report an error message when a file can't be opened
# Try the following with and without the "or die" 
my $nonexistent_file = "nonexistent_file.file";
open (INPUT2, "<", $nonexistent_file) or die ("Error message: $!");
close(INPUT2);


# This example is very boring and just spits the input back at the user
# In the next example we do something more interesting
