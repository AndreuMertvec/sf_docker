# How to run

## Clone repo with app
```sh
git clone git@github.com:SkillfactoryCoding/DEVOPS-praktikum_Docker.git
```
## Copy app and config to /srv/app
```sh
mkdir -p /srv/app/conf
cp ./web.py /srv/app
cp ./web.conf /srv/app/conf/
```
## Edit web.conf and run docker
```sh
docker run -d -v /srv/app:/srv/app -p 80:5000 <image_id>
```
