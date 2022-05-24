# Udagram

- [Udagram](#udagram)
  - [Description](#description)
    - [Dependencies](#dependencies)
    - [AWS Cloud Setup](#aws-cloud-setup)
  - [Environment Variables](#environment-variables)
  - [Pipeline](#pipeline)
  - [CircleCi](#circleci)
  - [Built With](#built-with)

---

## Description
A more in depth documentation into the application.

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- AWS EB CLI

- AWS RDS database running Postgres.

- AWS S3 bucket for Frontend.

- AWS Elastic Beanstalk for Backend.

```

### AWS Cloud Setup

- RDS - Database Host: database-1.cocblkwpnggi.us-east-1.rds.amazonaws.com
- RDS - Database Port: 5432
- RDS - Database Name: udagram
- RDS - Database User: postgres
- RDS - Database Password: Samar147258



- S3 Endpoint - Frontend: http://samar-udagram.s3-website-us-east-1.amazonaws.com


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

## Pipeline

From the root of the project:
- `npm run frontend:install`    - To install frontend dependencies.
- `npm run frontend:build`      - To build the Angular/Frontend.
- `npm run region-set`      - To set AWS Region.
           
- `npm run frontend:deploy`     - To deploy the project to S3 using `./udagram-frontend/bin/deploy.sh` deploy script.
- `npm run backend:install`     - To install backend dependencies.
- `npm run backend:build`       - To transpile the Typescript/Backend.
- `npm run backend:aws-eb`      - To Install AWS-EB using `./udagram-api/bin/aws-eb.sh` install script.
- `npm run backend:deploy`      - To deploy the project to EB using `./udagram-api/bin/deploy.sh` deploy script.


## CircleCi

The order of the run jobs:
- Setting Env Variables.
- Install NodeJS.
- Checkout Code & Cloning the Repo.
- Install AWS CLI v2.
- Check & Disable AWS pager.
- Configure AWS AccessKeyID.
- Setting up Elastic Beanstalk CLI 
- Frontend-Install dependencies.
- Backend-Install dependencies.
- Frontend-Build the angular
- Backend-Build .
- Backend-Install AWS Elastic Beanstalk CLI.
- Configure AWS Region.
- Backend-Deploy the app to AWS Elastic Beanstalk.
- Frontend-Deploy the site to AWS S3.








## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework