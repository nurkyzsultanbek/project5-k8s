provider "digitalocean" {
  token = var.do_token
}

# Create Droplets
resource "digitalocean_droplet" "name" {
  count     = length(var.droplet_names)
  name      = var.droplet_names[count.index]
  image     = "ubuntu-20-04-x64"
  region    = "nyc1"
  size      = "s-2vcpu-4gb"
  ssh_keys  = [var.ssh_key]
}

  # Terraform configuration files 
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}



# Installing helm:
# wget https://get.helm.sh/helm-v3.14.2-linux-amd64.tar.gz
# helm=$(ls | grep helm)
# tar -zxvf $helm
# binary=$(ls | grep ^linux-amd64)
# mv $binary/helm /usr/local/bin


# Install RKE:
# wget https://github.com/rancher/rke/releases/download/v1.5.5/rke_linux-amd64
# sudo mv rke_linux-amd64 rke
# sudo chmod +x rke
# sudo rke /usr/local/bin

#Installing kubectl:
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# sudo chmod +x kubectl
# sudo mv kubectl /usr/local/bin
# kubectl version
# swapoff -a

# Installing Docker:
# wget https://docs.docker.com/install/linux/docker-ce/ubuntu/
# VERSION_STRING=5:20.10.24~3-0~ubuntu-focal
# sudo apt-get install docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin -y
# useradd -m -G docker rke
# passwd rke: kaizen123
# su -rke
# ssh-keygen
# ls -la
