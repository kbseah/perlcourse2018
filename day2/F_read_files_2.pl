#!/usr/bin/env perl
use strict;
use warnings;

my $file = "phone_book.tab"; # Name of the file
my %phone_number;            # Hash to store information you read from file

# Open the file with "open" and assign the input stream to the handle INPUT
open(INPUT, "<", $file) or die ("Cannot read file:$!");
while (my $line = <INPUT>) { # Do you see the similarity to while (<STDIN>) in previous ex?
  chomp $line;
  my @split_line = split "\t", $line;
  $phone_number{$split_line[0]} = $split_line[1];
}
close(INPUT);

# Ask user for input to search the phone book
print "Type in the name of the person you want to call:\n";
my $name = <STDIN>;
chomp $name;
 if (defined $phone_number{$name}) {
   print "$name\'s phone number is $phone_number{$name}\n";
 } else {
   print "$name is not listed in the phone book.\n"
 }

## EXERCISES ###################################################################

# Implement a reverse search, to search for person's name by phone number
# Hint: You'll need to change just two characters on one line when reading the
# input
# (We'll assume for now that two people can't share the same number)
