#!/bin/bash
result=$(mysql --batch --silent -e 'select count(*) from check.log';)

echo $result

while [ $result -gt 100 ]
do
        result=$(($result-1))
        date=$(mysql --batch --silent -e 'select date from check.log order by date desc limit 1';)
        mysql --user="root" --password="Mafia889" --database="check" --execute="delete from check.log where date = '$date';"
done
