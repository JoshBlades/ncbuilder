export $(grep -v '^#' .env | xargs -d '\n')

sudo apt update && apt upgrade -y;

sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common;

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";

sudo apt update;
sudo apt-get install docker-ce docker-ce-cli containerd.io;


mkdir -p /data/{database,letsencrypt,nextcloud}; 
touch /data/letsencrypt/acme.json; 
chmod 600 /data/letsencrypt/acme.json;