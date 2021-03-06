#!/bin/bash
TS=`date +"%m-%d-%Y-%H%M%S"`;

git pull;

name=$(whoami)

echo "* Current user is $name";
echo "* Current timestamp: $TS";

curl -X GET \
  "https://sheets.googleapis.com/v4/spreadsheets/1I9EXxe-pWLhcLosakg5TPt98ERY6tdpJn1KngIGY7oY/values/%E7%A2%BA%E8%A8%BA%E7%97%85%E4%BE%8B!A1:M?majorDimension=ROWS&key=$1" \
  -o latest.json

if [[ `git status --porcelain` ]]; then
    # Changes
    echo "*** Data has updated - ts:$TS"
    git add -A;
    git commit -m "${TS}";
    git push origin master;
else 
    echo '*** Nothing to update!'
fi


