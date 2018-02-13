#!/usr/bin/env perl

# We'll always use strict and warnings pragmas from now on
use strict;
use warnings;
#use diagnostics;

# Arrays are like lists, they can take multiple scalars
# They are always prefixed with an @ character
# Define arrays with lists separated by commas, enclosed in parentheses:
my @arr = ('avocado', 'banana', 'coriander');

# Access elements in a list by number.
# Is the numbering 0-based or 1-based?
print $arr[1];
print "\n";

# Question: What happens when you call it this way?
#print @arr[1];
#print "\n";

# Arrays can also be numerical, in which case you don't need quotation marks
my @number_arr = (1, 1, 2, 3, 5, 8);

# Trick for sequences
my @seq = 1..15;

# Get the length of an array
my $seq_length = scalar (@seq);
print $seq_length."\n"; # Is this 0-based or 1-based?

# Get the last element of an array
print "The last index of my array arr is: ";
print $#arr; 
print "\n";
print "Its corresponding element is: ";
print $arr[$#arr];
print "\n";

## EXERCISES ###################################################################

# How do you reassign a value within an array? E.g. fix the odd number in this
# sequence
#my @arr = (1, 2, 3, 4, 13, 6);
