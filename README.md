# blockscout-deployment

It's not easy to deploy blockscout, even in docker mode. Here is one working copy to deploy blockscout.

This repo will guide you to deploy blockscout + anvil.

# Steps:

1. Clone blockscout repo & switch to release v8.1.0

```
$ git clone https://github.com/blockscout/blockscout.git
$ cd blockscout
$ git checkout tags/v8.1.0 -b v8.1.0
$ cd ..

```

2. Clone this repo

```
$ git clone https://github.com/zfdang/blockscout-deployment.git
$ cd blockscout-deployment
```

3. Setup anvil @ this repo

```
$ bash anvil_setup.sh
```

4. customize your domain @ this repo

```
$ bash replace_domain.sh
```

5. copy docker-compose-customized to blockscout repo @ this repo

```
$ cp -fr docker-compose-customized/ ../blockscout/
```

6. deploy blockscout & fix permission issue @ blockscout repo

```
$ cd ../blockscout/docker-compose-customized
$ docker-compose up -d --build
```

fix permission issue
```
sudo chown -R 10001:10001 ../runtime/backend/dets
```

restart blockscout
```
$ docker-compose down && docker-compose up -d --build
```

7. Access blockscout
open http://your_domain

DONE.
