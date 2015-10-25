package BugBuster::DAO::InputData;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('SupplyInputData');
__PACKAGE__->add_columns(qw/idSupplyInput PeriodData LocationData ProductData QuantityData isProcessed loadedDate enteredBy/);
__PACKAGE__->set_primary_key('idSupplyInput');

1;
