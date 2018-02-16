#!/usr/bin/env perl
use strict;
use warnings;

# We have a bunch of character strings that we store in an array
my @examples = ('Romeo',
                'roses',
                '$15.00',
                '080012345678',
                '14-02-2018',
                'Juliet',
                'luv u 4eva');

# Let's say you want to find anything that contains a numerical digit
print "These strings contain digits: \n";
foreach my $string (@examples) {
  if ($string =~ m/\d/) { # The character class 'digits' is represented by the special symbol \d
    print "$string\n";
  }
}
print "\n";

# Anything that contains a "word" character
print "These strings contain 'word' characters: \n";
foreach my $string (@examples) {
  if ($string =~ m/\w/) { # The character class 'word character' is represented by the special symbol \w
    print "$string\n";
  }
}
print "\n";
# Notice that digits and underscores are also considered 'word' characters

# Anything that contains whitespace
print "These strings contain whitespace: \n";
foreach my $string (@examples) {
  if ($string =~ m/\s/) { # The character class 'whitespace' is represented by the special symbol \s
    print "$string\n";
  }
}
print "\n";

# You can specify how many times a character should appear to qualify as a match
print "These strings contain 1 or more digits: \n";
foreach my $string (@examples) {
  if ($string =~ m/\d+/) { # Using "+" after a character class adds the condition "one or more "
    print "$string\n";
  }
}
print "\n";

print "These strings contain exactly 2 digits: \n";
foreach my $string (@examples) {
  if ($string =~ m/\d{2}/) { # Using "{N}" after a character class adds the condition "occurs N times"
    print "$string\n";
  }
}
print "\n";
# Question: Why does "080012345678" match although it contains more than 2 digits?

## EXERCISES ###################################################################

# You can negate existing character classes
# For example - \d matches digits 0 to 9. \D matches anything that is NOT a digit
# Can you guess what will negate the whitespace class (\s) and the word character
#  class (\w)?
# print "These strings do NOT contain digits: \n";
# foreach my $string (@examples) {
#   if ($string =~ m/\D/) {
#     print "$string\n";
#   }
# }
# print "\n";

# You can create your own character classes
# For example, you want to extract anything that contains the letters lmnop
# print "These strings contain characters that contain the letters lmnop: \n";
# foreach my $string (@examples) {
#   if ($string =~ m/[lmnop]/) { # if you want upper case, you have to explicitly specify
#     print "$string\n";
#   }
# }
# print "\n";

# Combine what you've learned so far to create a regex to identify strings that
#  look like a date.
print "These strings look like a dd-mm-yyyy date: \n";
foreach my $string (@examples) {
  if ($string =~ m/\d{2}-\d{2}-\d{4}/) { # How does this work?
    print "$string\n";
  }
}
print "\n";
# Can you write something similar for extracting prices? $15.00?
# Note that the dollar sign and decimal points are special characters that
# have to be escaped like so: \$ \. if you want to use them in a regexp
