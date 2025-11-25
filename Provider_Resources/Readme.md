# Update and essentials
- sudo apt update
- sudo apt install -y unzip curl gnupg software-properties-common

# Install AWS CLI v2 (recommended)
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o /tmp/awscli.zip
unzip /tmp/awscli.zip -d /tmp
sudo /tmp/aws/install
aws --version

# Install Terraform (official apt repo)
curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform
terraform -version



# Setup Secret Access Key in AWS

# To setup profile
aws configure --profile configs

# To see nd edit credential profile
nano ~/.aws/credentials

# To verify Credentials
aws sts get-caller-identity



# Edit provider.tf & Resouces.tf


# cd ~
# git clone https://github.com/mohammedsahil82/deleteafterpractice.git
# cd deleteafterpractice/tfb61/provider_resource
# ls -a




# Run Terraform — commands & flow
cd provider.tf

1) Initialize (downloads provider plugins)
terraform init

2) Optional: lint/format
terraform fmt

3) Validate syntax
terraform validate

4) See what will happen
terraform plan -out=tfplan

5) Apply (creates resources)
terraform apply "tfplan"


# To destroy everything the config created:
terraform destroy