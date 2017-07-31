#!/bin/bash
FLAG=0
while ((${FLAG} == 0))
do 
    read -p "Input port(between 3001 and 9999):" PORT
    if ((PORT >= 3001 )) && ((PORT <=9999));
        then
            FLAG=1
        else
            echo "Error:port should between 3001 and 9999"
    fi
done

echo
echo "You Project Start!"
echo

gunicorn --name tinygoogle -b 0.0.0.0:${PORT} -w 2 app:app
