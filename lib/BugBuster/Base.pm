package BugBuster::Base;
#
# Core functionality for BugBuster
#
# initialise database connections as required, default schema settings etc

BEGIN {
	# load the database schema objects
	

};


sub new {
	my $proto = shift;
	my $class = ref($proto) || $proto;

	my $self = {};

	bless $self, $class;

	return $self;
};

sub log {
	my $self = shift;
	my $msg = shift;
	my $level = shift || 'info';

	printf STDERR "%s\n", $msg;
	
};

1;
