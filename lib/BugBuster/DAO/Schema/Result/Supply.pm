package BugBuster::DAO::Schema::Result::Supply;

use base qw/BugBuster::DAO::Base/;

__PACKAGE__->table('Supply');
__PACKAGE__->add_columns(qw/idSupply SupplyDate Location SupplyAgent SupplyForm SupplyAmountMg/);
__PACKAGE__->set_primary_key('idSupply');

__PACKAGE__->belongs_to('agent' => 'BugBuster::DAO::Schema::Result::SupplyAgent', { 'foreign.ATCCode' => 'self.SupplyAgent' } );
__PACKAGE__->belongs_to('location' => 'BugBuster::DAO::Schema::Result::Location', { 'foreign.idLocation' => 'self.Location' } );
__PACKAGE__->belongs_to('_form' => 'BugBuster::DAO::Schema::Result::SupplyForm', { 'foreign.idSupplyForm' => 'self.SupplyForm' } );


1;
