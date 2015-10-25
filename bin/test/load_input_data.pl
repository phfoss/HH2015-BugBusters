#!/usr/bin/perl -w
#
# load an input csv file for input data

use BugBuster::DAO::Schema;

use Text::CSV;
use Data::Dumper qw(Dumper);
use Getopt::Long qw(GetOptions);

my %opts;
GetOptions(
        \%opts,
        qw/
                input|i=s
        /,
);

my $filename = $opts{'input'} || usage();

my $schema = BugBuster::DAO::Schema->schema();
my $csv = Text::CSV->new( { binary => 1 } );
$csv->eol ("\r\n");

open my $fh, "<:encoding(utf8)", $filename or die "$filename: $!";

# read contents
my $columns = $csv->getline($fh);
my @lines = ();
$csv->column_names(@$columns);
while (my $line = $csv->getline_hr($fh)) {
        push @lines, $line;
};
close $fh;

foreach my $l (@lines) {
        process_results($l);
};

sub process_results {
	my $line = shift;

	my $input = $schema->resultset('SupplyInputData')->new({
		'PeriodData' 		=> $line->{'Period Name'},
		'LocationData' 		=> $line->{'Ward Description'},
		'ProductData' 		=> $line->{'Product Description'},
		'QuantityData' 		=> $line->{'Quantity'},
		'isProcessed'		=> 0,
		'enteredBy'		=> 'system',
		});
	eval {
		$input->insert();
		printf "LOADED: %i, %s, %s, %s\n", $input->idSupplyInput, $input->PeriodData, $input->LocationData, $input->QuantityData;
	};
	if ($@) {
		printf "SKIPPED: $@\n";
	};
	
};

sub usage {
	printf "$0: --input <filename> --period <date>\n";
	exit;
};
