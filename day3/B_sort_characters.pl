#!/usr/bin/env perl
use strict;
use warnings;

# An array of randomly sorted names
my @names = ('Martha',  # See how you can break a statement over several lines
             'Ludwig',  # to improve readability?
             'Julius',
             'Siegfried',
             'Dora',
             'Otto',
             'Zeppelin'); # As long as you remember to end it with a semicolon

# Sort ascending order alphabetically

my @names_sort_asc = sort {$a cmp $b} @names;
print join " ", @names_sort_asc;
print "\n";

## EXERCISES ###################################################################

# How would you sort in descending alphabetical order?

# What happens when you try numeric sorting on characters?
#my @names_sort_numeric = sort {$a <=> $b} @names;

# What happens when you use character sorting 'cmp' on numbers?
#my @numbers = (89, 61, 62, 6, 30, 34, 15, 1, 16, 109, 7, 88, 8);
#print "With numeric sorting: ";
#print join " ", sort {$a <=> $b} @numbers;
#print "\n";
#print "With alphabetical sorting: ";
#print join " ", sort {$a cmp $b} @numbers;
#print "\n";
