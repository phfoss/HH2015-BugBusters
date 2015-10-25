#!/usr/bin/perl -w
#
# basic DAO core for BugBuster (inherit in all the result classes)

package BugBuster::DAO::Base;

use DBIx::Class;

use base qw(DBIx::Class::Core);



1;

