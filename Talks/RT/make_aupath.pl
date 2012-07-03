#!/usr/bin/perl

use Demeter qw(:fit :ui=screen);
use File::Copy;
use File::Path qw(remove_tree);

my $atoms = Demeter::Atoms -> new(file=>'../../Examples/Au+Cyanobacteria/Au.inp');
my $feff = Demeter::Feff -> new();
$feff -> set(workspace=>"temp", screen=>0, atoms=>$atoms);
$feff -> run;
my @sp   = @{$feff->pathlist};
my $first = $sp[0];
my $path = Demeter::Path->new(sp=>$first);
$path->_update("path");
copy(join("/", $path->folder, $path->file), 'aufirst.temp');
remove_tree($path->folder,1,1);
system 'sed "1,/@#/s/^ /# /" aufirst.temp > aufirst.dat';
unlink 'aufirst.temp';

