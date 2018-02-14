my @split = split /\t/, $line;
my $cigar = $split[5];
my @matches = $cigar =~ m/(\d+)M/g;
if (scalar @matches > 1) {
  print $line;
}
