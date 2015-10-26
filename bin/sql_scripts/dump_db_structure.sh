#!/bin/bash
#
# extract the DB structure for BugBusters
USER=$1
PWD=$2
mysqldump --no-data --no-create-db --no-tablespaces -u$USER -p$PWD BugBusters > bugbuster_schema.sql
