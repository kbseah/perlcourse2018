#!/usr/bin/env perl
use strict;
use warnings;

# If-else conditions can be used to screen numerical values
my $num = 15; # Change this to a number of your choice
if ($num == 10) { # Note the double-equals sign
    print "$num is equal to 10\n";
} elsif ($num > 10) {
    print "$num is greater than 10\n";
} else {
    print "$num is lesser than 10\n"; # The only logical alternative
}

# Screening character strings
my $name = 'Anton';
#if ($name == 'Anton') { # This doesn't work, uncomment this line to see what happens
if ($name eq 'Anton') { # This works
    print "The name is Anton\n";
} else {
    print "the name is not Anton\n";
}

# Negative conditions for numerical
if ($num != 10) {
    print "$num is not equal to 10\n";
} else {
    print "$num is equal to 10\n";
}

# Negative conditions for characters
if ($name neq 'Anton') {
    print "$name is not Anton\n";
} else {
    print "$name is Anton\n";
}


## EXERCISES ###################################################################


# How would you find the name whose phone number is '102'?
# Part of the script has already been done for you
my %phone = ('Anton' => '400',
             'Berta' => '102',
             'Caesar' => '109',
             'Dora' => '205');
foreach my $name (keys %phone) { # Recall: What does this do?
    # Insert an if-else condition here
}
