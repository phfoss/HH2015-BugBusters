#!/usr/bin/perl -w
#
# basic DBI class connectivity tests

use BugBuster::DAO::Schema;
use Data::Dumper qw(Dumper);

my $schema = BugBuster::DAO::Schema->schema();

my @agents = $schema->resultset('SupplyAgent')->all;

foreach my $agent (@agents) {
	printf("AGENT: %s, %s, %s, %s\n", $agent->GenericName, $agent->Family, $agent->ATCCode, $agent->_family->FamilyName);
};

