#!/usr/bin/env perl
use strict;
use warnings;

# The old phone book
my %phone = ('Anton' => '400',
             'Berta' => '102',
             'Caesar' => '109',
             'Dora' => '205');

# Let's write this data to a file
my $file = "phone_book_2.csv";
open (OUTPUT, ">", $file) or die ("Cannot open $file: $!"); # What's the difference to the example from previous script?
foreach my $name (keys %phone) {
  # Print names separated by commas
  print OUTPUT $name; # Notice that there is no comma between OUTPUT and $name
  print OUTPUT ",";
  print OUTPUT $phone{$name};
  print OUTPUT "\n";
}
close (OUTPUT);

# Some notes:
#  There's no "while" or <> operator here - why?

## EXERCISES ###################################################################

# What should you do if you want to append to a file instead of over-writing it?
# Hint: Think about redirection operators in Bash shell
