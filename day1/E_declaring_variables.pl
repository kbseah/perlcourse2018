#!/usr/bin/env perl

use strict;
use warnings;
#use diagnostics;

# the 'strict' pragma also asks you to declare your variables
# This becomes important as programs become more complex, to avoid the
# possibility of accidentally giving two variables the same name. Without
# explicit declaration, this is very hard to debug.

my $name;        # Reserve the name "$name"
$name = "Moe"; # Assign a value

# You can also declare and assign at the same time
my $name2 = "Larry";

# With "strict", you can't use a variable name without first declaring it
# Try the following line with and without 'use strict';
$name3 = "Curly";

print "The Three Stooges are $name, $name2, $name3.\n";

## EXERCISES ###################################################################

# What happens when you try to re-use an existing variable?
#my $name = "Alfred";
