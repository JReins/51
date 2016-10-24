#!/usr/bin/env perl
use strict;
use warnings;

my $file="./example-seq.fa";
my $sequence;
my @elements;


#open fasta file
#ignore ids and comments, conjunct seqs

open(my $handle, "<", $file)or die("$!");
while(<$handle>){
    chomp;
    my $zeile=$_;
    if($zeile=~/>/){
	@elements=split(/ /,$zeile);
	$sequence="";
    }
    elsif($zeile=~/;/){
	@elements=split(/ /,$zeile);
	$sequence="";
    }
    else{
	$sequence=$sequence.$_;
    }
}
close($handle);
print "\n"."DNA:"."\n"."$sequence";

#base counter
my $A=0;
$A++ while($sequence =~ m/[A]/g); #Alternativ: my $A = ($sequence =~ tr/A//);
my $C=0;
$C++ while($sequence =~ m/[C]/g);
my $G=0;
$G++ while($sequence =~ m/[G]/g);
my $T=0;
$T++ while($sequence =~ m/[T]/g);


print "\n"."Counts:"."\n"."A  C  G  T"."\n";
print "$A $C $G $T";

#DNA complement

my $complement = $sequence;
$complement =~ s/T/a/g;
$complement =~ s/A/t/g;
$complement =~ s/C/g/g;
$complement =~ s/G/c/g;
$complement =~ s/t/T/g;
$complement =~ s/a/A/g;
$complement =~ s/c/C/g;
$complement =~ s/g/G/g;
$complement = reverse $complement;

print "\n"."DNA complement:"."\n";
print $complement;

#DNA to RNA

my $rna = $sequence;
$rna =~ s/T/U/g;
print "\n"."RNA:"."\n";
print $rna;


print "\n";
 
#print <<END;
#Content-type: text/html
 
#<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
#<html><head><title>Achievement unlocked!</title></head><body>
#<h1>The script is done!</h1>
#</body></html>
END
