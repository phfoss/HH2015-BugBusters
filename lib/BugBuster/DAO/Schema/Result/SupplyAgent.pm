package BugBuster::DAO::Schema::Result::SupplyAgent;

use base qw/BugBuster::DAO::Base/;

__PACKAGE__->table('SupplyAgent');
__PACKAGE__->add_columns(qw/GenericName Family ATCCode/);
__PACKAGE__->set_primary_key('ATCCode');

__PACKAGE__->has_one('_family' => 'BugBuster::DAO::Schema::Result::AgentFamily', { 'foreign.AgentFamilyCode' => 'self.Family' } );
__PACKAGE__->has_many('_forms' => 'BugBuster::DAO::Schema::Result::SupplyAgentForm', { 'foreign.ATCCode' => 'self.ATCCode' } );


1;
