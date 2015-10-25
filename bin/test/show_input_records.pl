#!/usr/bin/perl -w
#
# basic DBI class connectivity tests

use BugBuster::DAO::Schema;
use Data::Dumper qw(Dumper);

my $schema = BugBuster::DAO::Schema->schema();

print Dumper( [ $schema->sources ]);

print Dumper( [ $schema->source('SupplyInputData')->columns ]);
print Dumper( [ $schema->source('AgentFamily')->columns ]);
print Dumper( [ $schema->source('SupplyAgent')->columns ]);
print Dumper( [ $schema->source('SupplyAgentForm')->columns ]);
