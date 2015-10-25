package BugBuster::DAO::Schema::Result::AgentFamily;

use base qw/BugBuster::DAO::Base/;

__PACKAGE__->table('AgentFamily');
__PACKAGE__->add_columns(qw/AgentFamilyCode FamilyName Organism/);
__PACKAGE__->set_primary_key('AgentFamilyCode');

1;
