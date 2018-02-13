#!/usr/bin/env perl
use strict;
use warnings;

# Observe the similarities in the print command with writing to output filehandles
# Run this script with the shell command:
#   perl F_stdout_stderr.pl > script_stdout 2> script_stderr

my @arr = -5..5;
foreach my $number (@arr) {
  if ($number < 0) {
    print STDERR "Ignoring negative number $number... \n";
    # STDERR is usually used for warning and error messages
  } elsif ($number == 0) {
    print STDERR "Ignoring zero ... \n";
  } else {
    print STDOUT "Log of $number is ";
    print STDOUT log($number);
    print "\n";
  }
}
