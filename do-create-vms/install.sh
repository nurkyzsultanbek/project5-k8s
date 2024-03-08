# Installing terraform. For x86_64 (AMD64) 
sudo apt install unzip -y
wget https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_linux_amd64.zip
unzip terraform_1.7.4_linux_amd64.zip
sudo mv terraform /usr/local/bin

# Installing Ansible:
sudo apt update
sudo apt install -y ansible