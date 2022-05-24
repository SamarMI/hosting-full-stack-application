
## Pipeline

From the root of the project:
- `npm run frontend:install`    - To install frontend dependencies.
- `npm run backend:install`     - To install backend dependencies.
- `npm run frontend:build`      - To build the Angular/Frontend.
- `npm run backend:build`       - To transpile the Typescript/Backend.
- `npm run backend:aws-eb`      - To Install AWS-EB using `./udagram-api/bin/aws-eb.sh` install script.
- `npm run region-set`      - To set AWS Region.          
- `npm run backend:deploy`      - To deploy the project to EB using `./udagram-api/bin/deploy.sh` deploy script.
- `npm run frontend:deploy`     - To deploy the project to S3 using `./udagram-frontend/bin/deploy.sh` deploy script.



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
