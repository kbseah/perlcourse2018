#!/usr/bin/env perl

# Scalars are the simplest kinds of variables.
# Scalar names are always prefixed with a $ character

# Variables can be character strings
$name = "Albert";
print "My name is $name\n";

# Variables can be reassigned (hence the name "variable")
$name = "Bruno";
print "My name is $name\n"; # The same code gives a different output

# They can also be numbers
$number = 5;
print "My number is $number\n";
print "My number squared is ";
print $number * $number; # No quotation marks
print "\n";

$numberSquared = $number * $number;
print "My number squared is $numberSquared\n";

## EXERCISES ###################################################################

# Double quotes vs single quotes
#$name = "Tim";
#print "My name is $name";
#print 'My name is $name';

# What happens when you do arithmetic on characters?
#$name = "Arnold";
#$name2 = "Schwarzenegger";
#$fullname = $name + $name2;
#print $fullname;
#print "\n";

# Try the following instead.
#$fullname = $name.$name2;
#print $fullname;
#print "\n";
# How would you introduce a space between $name and $name2?

# Whitespace and other special characters
#print "hello1";
#print "hello2\n";
#print "hello3\thello4\thello5\n";
# The backslash character \ is called an "escape" character, used in combination
# with another character to produce special characters like newline and tab
