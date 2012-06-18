#!/usr/bin/perl

use Demeter;

my $prj = Demeter::Data::Prj->new(file=>'quickmerge.prj');
my @data = $prj->slurp;
$data[0]->_update('bft');
my ($firstk, $firstr) = ($data[0]->epsk, $data[0]->epsr);
foreach my $d (@data) {
  $d->_update('bft');
  printf "%20s %e  %.3f  %e  %.3f\n", $d->name, $d->epsk, $firstk/$d->epsk, $d->epsr, $firstr/$d->epsr, $/;
};
