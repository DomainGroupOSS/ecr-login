# ecr-login
Logs into ECR, and stores credentials in .docker/config.json

Script continues to run every 500 seconds, refreshing credentials over time.

```
docker run -ti -e AWS_REGION=ap-southeast-2 -v /root/.docker:/root/.docker -v /var/run/docker.sock:/var/run/docker.sock ecr-login
```
