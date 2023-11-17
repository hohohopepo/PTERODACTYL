# Example in Ubuntu 16.04+ x86_64 amd64
# Docker install
apt-get update && apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update && apt-get install docker-ce -y
## END Docker install

# nginx and certbot install
apt-get update && apt-get install \
    nginx \
    certbot -y
## END nginx and certbot install
