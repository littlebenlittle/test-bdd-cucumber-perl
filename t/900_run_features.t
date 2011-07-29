#!perl

use strict;
use warnings;

use File::Slurp;

use Test::More;
use Test::BDD::Parser;
use Test::BDD::Executor;

my $feature = Test::BDD::Parser->parse_file(
	't/data/features/basic_parse.feature' );

my $executor = Test::BDD::Executor->new();

$executor->add_steps();
$executor->execute( $feature );
