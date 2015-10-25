package BugBuster::DAO::Schema;

use base qw/DBIx::Class::Schema/;

__PACKAGE__->load_namespaces();

sub schema {
	# connect to the db and return myself

	my $SERVER = '134.7.209.10';
	my $PORT = 'default port';
	my $DATABASE = 'BugBusters';
	my $DSN = "DBI:mysql:database=$DATABASE;host=$SERVER;";
	my $USER = 'bugbuster';
	my $PWD =  'bugbuster';

	my $schema = BugBuster::DAO::Schema->connect($DSN, $USER, $PWD)
	        or die "Unable to connect!\n";

	return $schema;
};

1;
