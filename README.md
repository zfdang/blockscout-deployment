# blockscout-deployment

It's not easy to deploy blockscout, even in docker mode. Here is one working copy to deploy blockscout.

This repo will guide you to deploy blockscout + anvil.

# Steps:

1. Clone blockscout repo & switch to release v8.1.0

``
$ git clone https://github.com/blockscout/blockscout.git
$ cd blockscout
$ git checkout tags/v8.1.0 -b v8.1.0
$ cd ..

```

2. Clone this repo

```
$ git clone git@github.com:zfdang/blockscout-deployment.git
$ cd blockscout-deployment
$ cp -fr * ../blockscout/
```

3. setup anvil

```
$ bash anvil_setup.sh
```

4. modify docker-compose-customized config

```
$ cd ../blockscout
$ bash replace_domain.sh
```

5. deploy blockscout & fix permission issue

```
$ cd docker-compose-customized
$ docker-compose up -d --build
```

fix permission issue
```
sudo chown -R 10001:10001 ../runtime/backend/dets
```

restart backend
```
$ docker-compose restart backend
```

6. check logs

```
docker-compose logs backend --tail=200
```

DONE.