# !/bin/bash
TS=`date +"%m-%d-%Y-%H%M%S"`;
whoami 
echo ${TS};
curl -X GET \
  "https://sheets.googleapis.com/v4/spreadsheets/1I9EXxe-pWLhcLosakg5TPt98ERY6tdpJn1KngIGY7oY/values/%E7%A2%BA%E8%A8%BA%E7%97%85%E4%BE%8B!A1:I?majorDimension=ROWS&key=$1" \
  -o latest.json

if [[ `git status --porcelain` ]]; then
    # Changes
    echo 'change'
    git add -A;
    git commit -m "${TS}";
    git push origin master;
fi


