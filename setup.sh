sudo apt update && apt upgrade -y;

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    dos2unix;

dos2unix .env

export $(grep -v '^#' .env | xargs -d '\n')

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";

sudo apt update;
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose;


mkdir -p /data/{database,letsencrypt,nextcloud};
touch /data/letsencrypt/acme.json;
chmod 600 /data/letsencrypt/acme.json;

docker-compose up -d