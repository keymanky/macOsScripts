#!/bin/bash 
#Este script borra el respaldo anterior y lo sobreescribe

current_time=$(date "+%Y.%m.%d_%H.%M.%S")
rm -rf /Applications/MAMP/htdocs/fm/*
zip -r /Applications/MAMP/htdocs/fm/Respaldos_${current_time}.zip  /Library/FileMaker\ Server/Data/Backups/
