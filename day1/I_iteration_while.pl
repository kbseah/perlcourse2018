#!/usr/bin/env perl

use strict;
use warnings;

my $counter = 0;
while ($counter < 5) {
    print "Counter value is $counter ... \n";
    $counter ++;
}

## EXERCISES ###################################################################

# Recall the example from part H, iterating across the index of an array
#my @arr = (1, 2, 3, 4, 5);
#for (my $i; $i < scalar (@arr); $i++) {
#    print $arr[$i];
#    print "\n";
#}
# Implement the above using "while" and a counter instead of "for"
