#!/usr/bin/env bash
# create several databases using the MYSQL DATABASES env
#example: export MYSQL_DATABASES = "one two three"
if [ "$MYSQL_DATABASES" ]; then
        for databaseName in $MYSQL_DATABASES; do
                echo "CREATE DATABASE IF NOT EXISTS \`$databaseName\` ;" | "${mysql[@]}"
                echo "GRANT ALL ON \`$databaseName\`.* TO '$MYSQL_USER'@'%' ;" | "${mysql[@]}"
        done

fi

echo 'FLUSH PRIVILEGES ;' | "${mysql[@]}"
