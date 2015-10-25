#!/usr/bin/perl -w
#
# basic DBI class connectivity tests

use BugBuster::DAO::Schema;
use Data::Dumper qw(Dumper);

my $schema = BugBuster::DAO::Schema->schema();

my @families = $schema->resultset('AgentFamily')->all;

foreach my $family (@families) {
	printf("FAMILY: %s, %s, %s\n", $family->AgentFamilyCode, $family->FamilyName, $family->Organism || 'unknown');
};

