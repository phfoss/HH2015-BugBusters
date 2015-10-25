package BugBuster::DAO::Schema::Result::SupplyAgentForm;

use base qw/BugBuster::DAO::Base/;

__PACKAGE__->table('SupplyAgentForm');
__PACKAGE__->add_columns(qw/idSupplyAgentForm ATCCode Restriction SupplyForm/);
__PACKAGE__->set_primary_key('idSupplyAgentForm');

__PACKAGE__->belongs_to('Agent' => 'BugBuster::DAO::Schema::Result::SupplyAgent' , { 'foreign.ATCCode' => 'self.ATCCode' } ); 

1;
