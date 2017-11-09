## Usage

Replace `certbot-auto` command with `docker run ... siomiz/certbot-auto`.

Examples:

```
docker run \
  --rm -it -p 443:443 \
  -v /etc/letsencrypt:/etc/letsencrypt \
  siomiz/certbot-auto \
  certonly --standalone -d your.fqdm
```

on Windows:
```
docker run \
  --rm -it \
  -v D:/le:/etc/letsencrypt \
  siomiz/certbot-auto \
  certonly --manual --preferred-challenges=dns -d your.fqdm
```
