## Usage example 

`certbot-auto` command is replaced by the first 4 lines:

```
docker run \
  --rm -it -p 443:443 \
  -v /etc/letsencrypt:/etc/letsencrypt \
  siomiz/certbot-auto \
  certonly --standalone -d your.fqdm
```

In my case I used another certbot config, port parameter was not needed and I passed as /etc/letsencrypt another directory, a Windows directory indeed:

```
docker run \
  --rm -it \
  D:/le:/etc/letsencrypt \
  siomiz/certbot-auto \
  certonly --manual --preferred-challenges=dns -d your.fqdm
```