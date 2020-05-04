This is a crawler data of:  
https://docs.google.com/spreadsheets/d/1I9EXxe-pWLhcLosakg5TPt98ERY6tdpJn1KngIGY7oY/edit




# USAGE

## 1. directly use JSON from github
https://raw.githubusercontent.com/kelvin2go/covid19-tw/master/latest.json

## 2. CURL 
```shell
curl https://raw.githubusercontent.com/kelvin2go/covid19-tw/master/latest.json

```

## 3. Run shell script: 

```
 . ./getData.sh {GOOGLE SHEET API KEY}
```


## 4. CRON tab
```
*/4 * * * * cd /home/ubuntu/Project/covid19-tw/ && bash getData.sh {key} > /tmp/temp.log 2>&1

```

Origin data from: 
https://sheets.googleapis.com/v4/spreadsheets/1I9EXxe-pWLhcLosakg5TPt98ERY6tdpJn1KngIGY7oY/values/%E7%A2%BA%E8%A8%BA%E7%97%85%E4%BE%8B!A1:I?majorDimension=ROWS&key=$1

souces from: 
https://join.g0v.tw/

slack #covid19
