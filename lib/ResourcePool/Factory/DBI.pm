#*********************************************************************
#*** ResourcePool::Factory::DBI
#*** Copyright (c) 2003 by Markus Winand <mws@fatalmind.com>
#*** $Id: DBI.pm,v 1.2 2003/02/27 21:44:41 mws Exp $
#*********************************************************************

package ResourcePool::Factory::DBI;

use vars qw($VERSION @ISA);
use strict;
use ResourcePool::Resource::DBI;
use ResourcePool::Factory;

$VERSION = "1.0100";
push @ISA, "ResourcePool::Factory";

sub new($$$$$) {
	my $proto = shift;
	my $class = ref($proto) || $proto;
	my $self = $class->SUPER::new("DBI"); 

	if (! exists($self->{DS})) {
		$self->{DS} = shift;
		$self->{user} = shift;
		$self->{auth} = shift;
		$self->{attr} = shift;
	}

	bless($self, $class);

	return $self;
}

sub create_resource($) {
	my ($self) = @_;
	return ResourcePool::Resource::DBI->new(	
				$self->{DS}
			,	$self->{user}
			,	$self->{auth}
			,	$self->{attr}
	);
}

1;
