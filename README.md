# ncbuilder

This is a simple script to help you get up and running with nextcloud in a docker container (docker compose). 

![nextcloud](https://miro.medium.com/max/1200/0*42t6Jb41PrtBNAmL.png)

### Install 

you will need a server you can easly get started with [Digital Ocean](https://m.do.co/c/b4cde2d765ba) _referral link_.

Start with conecting to your server, with ssh or other way. 
For the comands will be for linux. 

clone the repo to the server

```
git clone https://github.com/JoshBlades/ncbuilder.git
```
then we will need to go in to the folder and make the script executable. 
```
cd ncbuilder
chmod +x generate-password.sh setup.sh
```

You will need to configure the .env file (this is a hidden file)'
The main thing to set is the eamil and the url 
```
TRAEFIK_LETSENCRYPT_EMAIL=
NEXTCLOUD_URL=
```

the mariadb password will be set by the generate passwords script that will gerate random hex values as passwords. 
so run
```
./generate-password.sh 
```

And now all you need to do is run 

```
./setup.sh 
```

### start and stop

to start nc 
```
sudo docker-compose up -d
```

to stop 
```
sudo docker-compose down
```

## Video 

[![Create Nextcloud instance]](https://youtu.be/a0k1zTaYT38 "Create Nextcloud instance with SSL! (TRAEFIK & LETS-ENCRYPT)")

