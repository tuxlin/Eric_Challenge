# Serverless Website Automated Deployment with [Zappa](https://github.com/zappa/Zappa)

## Goals
- [x] Only necessary ports are exposed
- [x] Redirect to https
- [x] SSL Certificate(self-signed ok)
- [x] Automated deployment
- [x] ~~Validate server config~~ _no server to configure_
- [x] ~~Express everything as code~~ _Zappa handles the creation of the infrastructure_
- [x] Commit to a github repo

## Scalability
* Zappa can deploy a web app to any region or to AWS Global CDN.
* The serverless architecture of Lambda and API Gateway automatically handles scalability within the deployed region(s).
* Route53 and the available routing policies can be used to route traffic to your sites depending on what best suits your deployment. 

## Monitoring
* API Gateway allows you to monitor application latency and status codes returned to users.
* AWS Config can monitor for changes to the deployed resources.

## Setup
1. Make sure you have [Python3.8](https://www.python.org/downloads/release/python-3810/) installed.
2. Clone this repo and change into the project directory.
```
git clone https://github.com/tuxlin/Eric_Challenge.git
cd Eric_Challenge
```
3. Execute the [setup.sh](https://github.com/tuxlin/Eric_Challenge/blob/main/setup.sh) script to create and setup the python3.8 virtualenv with the necessary python packages in [requirements.in](https://github.com/tuxlin/Eric_Challenge/blob/main/requirements.in).
```
bash setup.sh
```
4. Activate the python virtualenv.
```
source venv/bin/activate
```
5. Initialize the zappa settings.
```
zappa init
```
6. Once initialization is complete, deploy the web app.
```
zappa deploy <stage-name>
```
7. View the web app by visiting the link provided by the output of zappa deploy.
8. You can make changes to the local [app.py](https://github.com/tuxlin/Eric_Challenge/blob/main/app.py) to add additional routes or [index.tpl](https://github.com/tuxlin/Eric_Challenge/blob/main/templates/index.tpl) template and update your changes.
```
zappa update <stage-name>
```
9. Finally, you may delete the deployment.
```
zappa undeploy <stage-name>
```



 
