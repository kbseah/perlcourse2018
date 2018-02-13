#!/usr/bin/env perl
use strict;
use warnings;

# With arrays, we can finally harness the power of computing to do boring,
# repetitive tasks for us

my @arr = 1..5;

# First way: Explicitly loop over the index
for (my $i = 0; $i < scalar (@arr); $i++) {
#    ^Initialize ^End condition     ^Increment
# The three elements of a "for" statement
    my $squared = $arr[$i] ** 2;
    print "$arr[$i] squared = $squared\n";
}

# Second way: Implicitly loop over index with foreach notation
foreach my $element (@arr) {
    my $squared = $element ** 2;
    print "$element squared = $squared\n";
}

# Third way: map
my @squared = map {$_ ** 2} @arr;
print join "\t", @arr;
print "\n";
print join "\t", @squared;
print "\n";

## EXERCISES ###################################################################

# In the 'for' loop above, the counter $i is defined with a my statement inside
# the for statement. What happens when you try to retrieve the value of $i
# again, outside the 'for' loop?
#print $i;
