
cd ./iac/1800100-provision-remote-storage

cd ../..

code . -r

terraform init

terraform fmt # formats the tf files.

terraform validate

terraform plan -out main.tfplan

terraform show main.tfplan

terraform apply main.tfplan

# Once created, you can use as follows.

    # resource_group_name  = "storage-rg"
    # storage_account_name = "tfstatetrial"
    # container_name       = "tfstatefiles"
    # key                  = "terraform.tfstate"

terraform state list

# For the following command to work, you need to pass on the resource, or data source.
# This resource or data source is got from terraform state list command
terraform state show 

terraform output

# Even if these are sensitive, they will not be shown.
terraform output -json

terraform plan -destroy -out main.destroy.tfplan

terraform show main.destroy.tfplan

terraform apply main.destroy.tfplan


