# docker-serve

A dockerize [vercel/serve](https://github.com/vercel/serve).

## Usage

```sh
docker run \
  --detach \
  --publish 5000:5000 \
  --volume data:/data \
  blackglory/serve
```
