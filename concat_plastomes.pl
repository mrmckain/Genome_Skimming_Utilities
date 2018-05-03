#!/usr/bin/perl -w
use strict;
my %concat_seqs;
my @files = <*.aligned>;
for my $file(@files){
	open my $tfile, "<", $file;
	my $sid;
	while(<$tfile>){
		chomp;
		if (/>/){
			$sid = $_;
		}
		else{
			$concat_seqs{$sid}.=$_;
		}
	}
}
open my $out, ">", "plastomes_aligned.fsa";

for my $seqs (keys %concat_seqs){
	print $out "$seqs\n$concat_seqs{$seqs}\n";
}
