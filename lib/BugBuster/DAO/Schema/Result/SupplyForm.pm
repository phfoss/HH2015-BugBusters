package BugBuster::DAO::Schema::Result::SupplyForm;

use base qw/BugBuster::DAO::Base/;

__PACKAGE__->table('SupplyForm');
__PACKAGE__->add_columns(qw/idSupplyForm FormType/);
__PACKAGE__->set_primary_key('idSupplyForm');

__PACKAGE__->has_many('_forms' => 'BugBuster::DAO::Schema::Result::SupplyAgentForm', { 'foreign.SupplyForm' => 'self.idSupplyForm' } );


1;
