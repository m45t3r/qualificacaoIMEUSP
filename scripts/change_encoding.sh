#!/bin/bash

fcode="$1"
tcode="$2"

for arq in $(find . -name '*.tex' -o -name '*.bib')
do
    fcode=$(file --mime-encoding $arq | awk '{print $2;}')
    echo "$arq: $fcode"
    if [ $fcode == $1 ]
    then
       $(cp $arq $arq.bak)
       $(iconv -f $fcode -t $tcode $arq -o $arq)
    fi
done

echo "FIM"

exit 0
 
