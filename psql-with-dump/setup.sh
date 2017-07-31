#!/bin/bash

if grep -e "--" ./dump/* | grep "SET idle_in_transaction_session_timeout = 0" > /dev/null
then
  echo 'Skipping SED as it has been previously applied'
else
  # Commenting out variables which psql 9.4.7 does not recognize 
  echo 'Applying SED to Two variables to avoid crash'
  find ./dump/ -type f -exec sed -i '' 's/SET idle_in_transaction_session_timeout = 0;/-- SET idle_in_transaction_session_timeout = 0;/g' {} \;
  find ./dump/ -type f -exec sed -i '' 's/SET row_security = off;/-- SET row_security = off;/g' {} \;
fi

docker-compose up
