## Usage example 

`certbot-auto` command is replaced by the first 4 lines:

```
docker run \
  --rm -it -p 443:443 \
  -v /etc/letsencrypt:/etc/letsencrypt \
  siomiz/certbot-auto \
  certonly --standalone -d your.fqdm
```
