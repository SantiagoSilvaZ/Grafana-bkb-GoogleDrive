#!/bin/bash
#
# Validation.php
#
# Script to backup sqlite Grafana database to Google Drive.
#
#
# @link       https://github.com/SantiagoSilvaZ
# @copyright  2022 SantiagoZ
# @author     SantiagoZ <santiagoz.silvz@gmail.com>
#

# Variable
data=$(date +"%d-%m-%y")
directoryDrive=''
directoryLocal='/var/lib/grafana/grafana.db'
database='grafana.db'
file=$data-$database

# gdrive usage
./gdrive upload $directoryLocal -p $directoryDrive --name $file