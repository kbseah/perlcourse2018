#!/usr/bin/env perl
use strict;
use warnings;

# We've already encountered a sort command before
# Today we'll work through sorting more systematically

# Sorting can only be done on the elements of an array, returning a new array

# Make an array of 10 random numbers
my @randarr;
for (my $i = 0; $i < 10; $i++) {
  push @randarr, int(rand(100));
  # rand(10) generates a random number between 0 and 100
  # int rounds it to the nearest integer
  # try replacing "int(rand(100))" with just "rand(100)" and see what happens
}

# Print the unsorted array, separated by commas
print join " ", @randarr;
print "\n";

# Sort in asccending order
print "Ascending sort: ";
my @randarr_sort_ascending = sort {$a <=> $b} @randarr;
print join " ", @randarr_sort_ascending;
print "\n";

# Sort in descending order
print "Descending sort: ";
my @randarr_sort_descending = sort {$b <=> $a} @randarr;
print join " ", @randarr_sort_descending;
print "\n";
