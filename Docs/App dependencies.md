## App dependencies
-NodeJS
-express
-pg
-angular


## Environment Variables

Setup the following variables in the .env file or in the cloud environments:
```
- PORT                   = 8080
- POSTGRES_HOST          = <Database_IP_Address>
- POSTGRES_PORT          = <Database_Port>
- POSTGRES_DB            = <Database_Name>
- POSTGRES_USERNAME      = <Database_Username>
- POSTGRES_PASSWORD      = <Database_Password>
- URL                    = <Url>
- JWT_SECRET             = <Any_PassPhrase>
- AWS_REGION             = <us-east-1>
- AWS_DEFAULT_REGION     = <us-east-1>
- AWS_PROFILE            = <default>
- AWS_BUCKET             = <Bucket_Name>
- AWS_ACCESS_KEY_ID      = <ACCESS_KEY_ID>
- AWS_SECRET_ACCESS_KEY  = <SECRET_ACCESS_KEY>
```
### Project Setup

1. Clone the project - `https://github.com/SamarMI/hosting-full-stack-application.git`
2. Go into the project directory - `cd udagram-frontend`
3. Install the dependencies - `npm install`
4. Start the frontend - `npm run start`
5. Open new terminal - `cd ../udagram-api`
6. Setup `.env`
7. Install the dependencies - `npm install`
8. start the backend - `npm run start`