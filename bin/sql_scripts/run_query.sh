#!/bin/bash
# 
# run a query against BugBusters db
FILE=$1
mysql -uroot BugBusters < $FILE | ../tools/mysql_to_csv
