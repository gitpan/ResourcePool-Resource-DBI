#*********************************************************************
#*** Makefile.PL
#*** Copyright (c) 2002 by Markus Winand <mws@fatalmind.com>
#*** $Id: Makefile.PL,v 1.1 2002/12/22 11:20:18 mws Exp $
#*********************************************************************

use ExtUtils::MakeMaker qw(prompt WriteMakefile);
use Data::Dumper;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my %opts;

$opts{NAME}      = 'ResourcePool::Resource::DBI',
$opts{VERSION}   = '1.0000';
$opts{PREREQ_PM} = {'ResourcePool' => '1.0000'
                   ,'DBI'};

if ($ExtUtils::MakeMaker::VERSION >= 5.43) {
    $opts{ABSTRACT} = 'DBI bindings for ResourcePool';
    $opts{AUTHOR} = 'Markus Winand <mws@fatalmind.com>';
}

WriteMakefile(%opts);
