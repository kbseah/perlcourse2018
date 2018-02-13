#!/usr/bin/env perl
use strict;
use warnings;

# SAM files are used to store alignments of short sequencing reads against
# reference sequences
# The SAM format standard is described here: http://samtools.github.io/hts-specs/SAMv1.pdf
# We'll refer to this document when working through this example

# Download the following example files:
# http://www4.ncsu.edu/~rosswhet/BIT815/Overview/Resources/sampleReadsSAM.tgz
# Untar the archive with:
# tar -xzf sampleReadsSAM.tgz

# The SAM file is named A1sample.sam
my $file = "A1sample.sam";

my @quals; # Array to store quality scores

# Open the file
open (INPUT, "<", $file) or die ("Cannot open file: $!");
# Read each line
while (my $line = <INPUT>) {
  chomp $line;
  if ($line =~ m/^@/) { next; } # We'll explain this line tomorrow - it skips header lines
  # Split each line into separate fields (tab-separated table)
  my @split_line = split "\t", $line;
  # Quality score for each alignment is in the 5th column
  my $qual_score = $split_line[4];
  # Add this to our array
  push @quals, $qual_score;
}
close(INPUT);

# Find total number of quality scores
print "Total number of quality scores is ";
print scalar (@quals);
print "\n";

# Find lowest and highest scores by sorting the array
my @sort_quals = sort {$a <=> $b} @quals;
print "Lowest quality score is ";
print $sort_quals[0];
print "\n";
print "Highest quality score is ";
print $sort_quals[$#sort_quals];
print "\n";
