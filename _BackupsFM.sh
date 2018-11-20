#!/bin/bash 
#Este script borra el respaldo anterior y lo sobreescribe

current_time=$(date "+%Y.%m.%d_%H.%M.%S")
rm -rf /Applications/MAMP/htdocs/fm/*
zip -r /Applications/MAMP/htdocs/fm/Respaldos_${current_time}.zip  /Library/FileMaker\ Server/Data/Backups/

                            
#!/bin/bash 
# This is a comment 
#current_time=$(date "+%Y.%m.%d-%H.%M.%S")
#FILE_LIST="`ls -d */ | sed 's/\// /g'`" 
#for file in ${FILE_LIST} 
#do 
#        tar -zcvf "/respaldos/"${file}_${current_time}.tar.gz ${file}
#done
