#!/usr/bin/env perl
use strict;
use warnings;
die "Usage: $0 <cmd-prefix>\n" unless $#ARGV < 1;
my $cmd = $#ARGV < 0 ? "p!" : $ARGV[0];
my $dir = "./" . unpack("H*", $cmd) . "/";
foreach my $i (1 .. 806) {
	my $name = sprintf("%03d", $i);
	open(my $outf, ">", "$dir$name.html") or die $!;
	print $outf qq(<!DOCTYPE html><html lang="en"><head><title>PokecordSpawn.jpg</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta name="twitter:card" content="summary_large_image"><meta name="og:title" content="A wild pok&#233;mon has appeared!"><meta name="og:description" content="Guess the pok&#233;mon and type ${cmd}catch &amp;lt;pok&#233;mon&amp;gt; to catch it!"><meta name="theme-color" content="#00ad85"><meta name="og:image" content="https://db.pokemongohub.net/images/official/full/$name.png"><meta http-equiv="refresh" content="0; url=about:blank"></head><body></body></html>);
	close($outf);
}
