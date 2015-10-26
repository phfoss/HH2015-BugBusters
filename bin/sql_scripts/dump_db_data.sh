#!/bin/bash
#
# extract the DB contents for BugBusters
USER=$1
PWD=$2
mysqldump --no-create-db --no-tablespaces --no-create-info --disable-keys --extended-insert --replace --complete-insert --ignore-table=BugBusters.SupplyInputData -u$USER -p$PWD BugBusters > bugbuster_metadata.sql
mysqldump --no-create-db --no-tablespaces --no-create-info --disable-keys --extended-insert --replace --complete-insert  -u$USER -p$PWD  BugBusters SupplyInputData > bugbuster_inputdata.sql
