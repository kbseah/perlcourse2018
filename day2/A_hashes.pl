#!/usr/bin/env perl
use strict;
use warnings;

# Hashes are used to look up values using a key, like a phone directory
my %phone = ('Anton' => '400',
             'Berta' => '102',
             'Caesar' => '109',
             'Dora' => '205');
# The 'fat arrow' => is used to associate key-value pairs

# Retrieve the values using a key, using the following syntax
#print "Anton's phone number is ";
#print $phone{'Anton'};
#print "\n";

# You can also use the curly-brace notation to directly add new key-value pairs
# to a hash, or to modify an existing entry
$phone{'Emil'} = '102';
# Keys must be unique, whereas values can be repeated

# You can retrieve the keys as an array with the 'keys' command
my @names = keys %phone;
foreach my $name (@names) {
    print "$name\'s phone number is $phone{$name}\n";
}


## EXERCISES ###################################################################

# What happens when you try to use a key that is not defined?
#print $phone{'Friedrich'};

# Retrieve the values as an array - how would you do this? 

# Directly embed a keys statement into a foreach statement
#foreach my $name (keys %phone) {
#    print "$name,";
#}
#print "\n";

# The 'keys' statement returns the keys in an unsorted order. What happens
# when you run the script repeatedly? Is the order always the same?
