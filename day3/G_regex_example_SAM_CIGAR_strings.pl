#!/usr/bin/env perl
use strict;
use warnings;

# The 6th column in the alignment entry of a SAM file is the "CIGAR string"
#  which describes the alignment - which positions are matches, insertions,
#  substitutions, or deletions.

# In this example, we feed a SAM file to the script, and filter out those lines
#  which are NOT 100% matches.
# The reads being aligned are 100 bp long, so perfect matches would be coded
#  in a CIGAR string as "100M"

my $count_all = 0;   # Counter for total number of alignments in file
my $count_100M = 0;  # Count how many alignments are perfect matches
my @match_bases;

my $file = "A1sample.sam";
open (INPUT, "<", $file) or die ("$!");
while (my $line = <INPUT>) {
  my @split = split /\t/, $line; # Split each entry into fields
  my $cigar = $split[5];         # Extract the CIGAR string
  if (defined $cigar) {          # Check that a CIGAR string exists!
    $count_all ++;
    my @matches = $cigar =~ m/(\d+)M/g;
    push @match_bases, @matches; # Save all matches in CIGAR strings
  }
}
close (INPUT);

my $sum = 0;
my $perfect_matches = 0;
foreach my $match (@match_bases) {
  $sum += $match; # Add to the sum of all matching bases
  if ($match == 100) {
    $perfect_matches ++; # Count perfect matches
  }
}

my $mean_match = $sum / scalar (@match_bases);

print "Total alignments with CIGAR strings: $count_all\n";
print "Perfect 100M matches: $perfect_matches\n";
print "Percentage perfect matches: ";
print 100 * $perfect_matches / $count_all;
print "\n";
print "Mean match segment length: $mean_match\n";



## EXERCISES ###################################################################

# SAM files give a lot of data that you can parse and analyze

# Other fun things you can do with SAM files using Perl (or any other language):
#  * Count number of reads mapping to a specific reference sequence
#  * Filter alignments by read quality, mapping position, etc.
#  * Extract only paired or unpaired reads (using the bitflag column)
