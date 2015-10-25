#!/usr/bin/perl -w
#
# basic DBI class connectivity tests

use BugBuster::DAO::Schema;
use Data::Dumper qw(Dumper);

my $schema = BugBuster::DAO::Schema->schema();

my @input = $schema->resultset('SupplyInputData')->all();

foreach my $input (@input) {
	printf("INPUT RECORD: %i, %s, %s, %s, %s\n", $input->idSupplyInput, $input->PeriodData, $input->LocationData, $input->ProductData, $input->QuantityData);
};
