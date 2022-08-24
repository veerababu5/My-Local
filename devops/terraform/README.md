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

