eb use udagram-api-dev
eb deploy udagram-api-dev
eb setenv POSTGRES_HOST=$POSTGRES_HOST PORT=$PORT  DB_PORT=$DB_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB AWS_REGION=$AWS_REGION AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
eb setenv AWS_PROFILE=$AWS_PROFILE AWS_BUCKET=$AWS_BUCKET AWS_S3_ENDPOINT=$URL AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY JWT_SECRET=$JWT_SECRET