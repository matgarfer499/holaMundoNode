#! /bin/bash
STACK_NAME=aws-instancia
STACK_NAME_2=aws-bucket
REGION=us-east-1
CLI_PROFILE=default
EC2_INSTANCE_TYPE=t2.micro
S3_BUCKET_NAME="us-east-1-pipeline-693962113142"

echo -e "\n=========== Desplegando setup.yml (S3 Bucket) =============="

aws cloudformation deploy \
	--region $REGION \
	--profile $CLI_PROFILE \
	--stack-name $STACK_NAME_2 \
	--template-file setup.yml \
	--no-fail-on-empty-changeset \
	--parameter-override BucketName=$S3_BUCKET_NAME

echo -e "\n=========== Desplegando  main.yml ================="

aws cloudformation deploy \
	--region $REGION \
	--profile $CLI_PROFILE \
	--stack-name $STACK_NAME \
	--template-file main.yml \
	--no-fail-on-empty-changeset \
	--capabilities CAPABILITY_NAMED_IAM \
	--parameter-override EC2InstanceType=$EC2_INSTANCE_TYPE

if [ $? -eq 0 ]; then
	aws cloudformation list-exports \
		--profile default \
		--query "Exports[?Name=='EndoPoint'].Value"
fi
