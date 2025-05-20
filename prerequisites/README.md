# Use centos-8-stream.tf file to create a CentOS-8-Stream(x86_64) on AWS.

If you are using Terraform for the first time, follow below to install.

## Prerequisites

[Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and set AWS environment variables as given below.

[Install Terraform](https://developer.hashicorp.com/terraform/install) if not installed.

```bash
export AWS_ACCESS_KEY_ID="<AWS_ACCESS_KEY_ID>"
export AWS_SECRET_ACCESS_KEY="<AWS_SECRET_ACCESS_KEY>"
```

# How to execute the terraform

Download centos-8-stream.tf and run following commands to start the VM.

### Step 1 : Init

```
terraform init 
```

### Step 2 : View changes before applying

```
terraform plan
```

### Step 3 : Apply changes

```
terraform apply
```

### Optional

Control logging by setting environment labels as below.

```
export TF_LOG=DEBUG      // log level - INFO, DEBUG, TRACE...
export TF_LOG_PATH=./terraform.log      // log file for debugging
```
