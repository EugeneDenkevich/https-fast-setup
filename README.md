### Configure https:
#### Test:
```
docker compose -f docker-compose.yml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email eugenestudio@mail.ru --agree-tos --non-interactive --expand -d some-domain.eug -d www.some-domain.eug --dry-run
```
#### Generate:
```
docker compose -f docker-compose.yml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email eugenestudio@mail.ru --agree-tos --non-interactive --expand -d some-domain.eug -d www.some-domain.eug
```

#### Info about sert:
docker compose exec -it nginx openssl x509 -in /etc/letsencrypt/live/some-domain.eug/cert.pem -text -noout

#### © Eugene Denkevich, 2026.
