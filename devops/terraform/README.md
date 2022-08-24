# Launch the aws ec2 rhel instance

launch the server using gitbash/mobaxterm/putty/cmd

sudo -i
firstly update the server using 
yum update -y

and then u can install the awscli using the below commands
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

check the version of the awscli using this below command
aws --version

and then u can install the terraform using this below links
https://www.terraform.io/downloads

copy the link url of u required installation using wget commang

first of all create a one directory the directory name is terraform
mkdir terraform
change the particular directory
cd terraform

wget https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_linux_amd64.zip

and then unzip the file using unzip command
unzip terraform_1.2.7_linux_amd64.zip

and set the path of terraform
vi .bash_profile
PATH=$PATH:/root/terraform
source .bash_profile

check the terraform command is working or not
terraform --version

create the iam user in aws and give administration access

aws configure --profile "creating iam user_name"
access_key="----------------"
secret_key="----------------"
region    ="----------------"
format    ="-----json-------"

create a one file take any name but lastly u can mentioned the .tf

and write the file and then apply the following commands

# terraform init
initialising the terraform

# terraform validate 
validate the content of the file

# terraform fmt
set the format of the file

# terraform plan
build the terraform file

# terraform apply
deploy the file 

# terraform destroy 
deleting and destroy the file information





