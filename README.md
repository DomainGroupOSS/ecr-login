# ecr-login
Logs into ECR, and stores credentials in .docker/config.json

Script continues to run every 500 seconds, refreshing credentials over time.

```
docker run -d -e AWS_REGION=ap-southeast-2 -e REGISTRY_IDS=570761704186 -v /root/.docker:/root/.docker -v /var/run/docker.sock:/var/run/docker.sock discobean/ecr-login
```

## What I use this for

This will authenticate over and over again with ECR.. Just provide the AWS_REGION you want access to.  The script will pull credentials from the IAM role, thus you need to make sure you:

1. Use IAM
2. Your role has access to ECR
