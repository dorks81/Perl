#!/usr/bin/perl

use strict;
use warnings;

# Add key-value pair to hash
my $line = "1 one";
my @array = split(" ", $line);
my %hash = ();
$hash{ $array[0] } = $array[1];
$line = "2 two";
@array = split(" ", $line);
$hash{ $array[0] } = $array[1];

# Print key-value pair
while ( my ($key, $value) = each(%hash) ) {
     print "$key => $value\n";
}

for my $key (keys %hash) {
    print "key= $key\tvalue= $hash{$key}\n";
}

# Fetch a hash value
print"$hash{'1'}\n";
print "$hash{$array[0]}\n";

# The size of a hash
print "number of keys = ", scalar keys %hash, "\n";

# If key exists
my @list = (2, 20, 1);
foreach my $a (@list) {
     if (exists $hash{$a}) {
          print "$a is TRUE\n";
     }else{
          print "$a is FALSE\n";
     }
}