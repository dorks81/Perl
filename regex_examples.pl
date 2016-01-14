#!/usr/bin/perl

use strict;
use warnings;

# Examples of printing text between two regex patterns
my $desc = "START:";
my $tag  = "STOP:";
my $line = "START:1234STOP:";
$line =~ /$desc(.*?)$tag/;
my $match_ex1 = $1;
print "match example 1 = $match_ex1\n";

my @match_ex2 = $line =~ /$desc(.*?)$tag/;
print "match example 2 = $match_ex2[0]\n";

(my $match_ex3 = $line) =~ s/$desc(.*?)$tag/$1/;
print "match example 3 = $match_ex3\n";