#!/usr/bin/perl -w
use strict;
use GRID::Machine;
use GRID::Machine::Group;
use Data::Dumper;

my @MACHINE_NAMES = split /\s+/, $ENV{MACHINES};
my @m = map { GRID::Machine->new(host => $_, wait => 5, survive => 1) } @MACHINE_NAMES;

my $c = GRID::Machine::Group->new(cluster => [ @m ]);

$c->sub(suma_areas => q{
   my ($id, $N, $np) = @_;
     
   my $sum = 0;
   for (my $i = $id; $i < $N; $i += $np) {
       my $x = ($i + 0.5) / $N;
       $sum += 4 / (1 + $x * $x);
   }
   $sum /= $N; 
});

my ($N, $np, $pi)  = (1000, 4, 0);

print Dumper($c->suma_areas(args => [ map {  [$_, $N, $np] } 0..$np-1 ]));


