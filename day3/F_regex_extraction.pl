#!/usr/bin/env perl
use strict;
use warnings;

# So far we have been matching patterns, and reporting whether a string
# contains a match or not.
# What if we want to extract ONLY the piece that matches a specific pattern?

# Example 1 - Bookkeeper's Nightmare

# Dates can be written in different formats.
my @bookkeeping_nightmare = ('21-11-97',
                             '12-12-12',
                             '2-15-2016',
                             '14-02-2018',
                             '4th of September, 1922',
                             );

# Extract anything that looks like a date:
print "These strings look like dd-mm-yyyy dates:\n";
foreach my $string (@bookkeeping_nightmare) {
  if ($string =~ m/(\d+)-(\d+)-(\d+)/) { # We use round parentheses to "capture" matching patterns
    print $string;
    print "\t";
    my $day = $1; # Captured groups get put into special variables called $1, $2, etc.
                  # ... which is why you should NOT call your own variables $1, $2, $3...  !
    my $month = $2;
    my $year = $3;
    # If "month" is more than 12, then it's likely to be american style mm-dd
    if ($month > 12) {
      print "Probably American style, should be $month-$day-$year instead";
    }
    print "\n";
  }
}



# Example 2 - Capture to an array

# In the example above, the captured patterns get assigned to specially-named
#  variables called $1, $2.... We can explicitly assign the captured patterns
#  to an array that we name

my $date = "15-01-2016";

print "\nExample 2\n";
print "Given the date $date\n";
my @date_components = ($date =~ m/(\d+)-(\d+)-(\d+)/);
  # The regexp statement is enclosed in parentheses and assigned to an array
print "The day is: $date_components[0]\n";
print "The month is $date_components[1]\n";
print "The year is $date_components[2]\n";
print "\n";

# Just in case the string does NOT match, you can enclose this in an if statement
my $date2 = "15-Jan-2016";
if (my @components = ($date2 =~ m/(\d+)-(\D+)-(\d+)/)) { # Substitute $date2 with $date to see what happens
  print "$date2 looks like a date with month name instead of digits \n";
  print "The month is $components[1]\n";
}
print "\n";


# Example 3 - Repeated matches

# If you want to find multiple matches with in a string, but you don't necessarily
#  know how many times they'll match and in which context, you can use the 'g'
#  suffix

my $sentence = 'The weights of apples, bananas, and pears were 15 kg, 42 kg, and 12 kg respectively.';
print "Example 3\n";
my @weights = ($sentence =~ m/(\d+) kg/g);
  # We use the following tricks:
  #   - Capture to an array
  #   - Match with 'm'
  #   - Capture with the grouping operator ()
  #   - Use character class \d
  #   - Match one or more times with +
  #   - Match multiple times with g suffix 
print "The weights are: ";
print join ",", @weights;
print "\n";

## EXERCISES ###################################################################

# Modify example 1 to also check the year. If it is two digits, then convert it
#  to 4-digit format using the following rules: if it is less than 20, then
#  assume it is after 2000 (i.e. '14' would be converted to '2014'). If it is
#  more than 70, assume it is during the 1900s, i.e. 83 would be converted to
#  1983. If in between, then put a warning to STDERR that this date was
#  ambiguous and ignore it.

# Convert the dates to ISO 8601 yyyy-mm-dd format
#  https://en.wikipedia.org/wiki/ISO_8601
