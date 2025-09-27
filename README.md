# blockscout-deployment

It's not easy to deploy blockscout, even in docker mode. Here is one working copy to deploy blockscout.

# steps:

clone this repo

```
sudo chown -R 10001:10001 ../runtime/backend/dets
```

```
docker-compose logs backend --tail=200
```
