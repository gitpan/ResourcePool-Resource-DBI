#*********************************************************************
#*** Makefile.PL
#*** Copyright (c) 2002 by Markus Winand <mws@fatalmind.com>
#*** $Id: Makefile.PL,v 1.2 2003/02/27 21:44:38 mws Exp $
#*********************************************************************

use ExtUtils::MakeMaker qw(prompt WriteMakefile);
use Data::Dumper;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my %opts;

$opts{NAME}      = 'ResourcePool::Resource::DBI',
$opts{VERSION}   = '1.0100';
$opts{PREREQ_PM} = {'ResourcePool' => '1.0100'
                   ,'DBI'};

if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{ABSTRACT} = 'DBI bindings for ResourcePool';
    $opts{AUTHOR} = 'Markus Winand <mws@fatalmind.com>';
}

WriteMakefile(%opts);
