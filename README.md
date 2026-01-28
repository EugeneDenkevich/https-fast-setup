### Configure https:
#### Test:
```
docker compose -f docker-compose.yml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email eugenestudio@mail.ru --agree-tos --non-interactive --expand -d eugenestudio.fun --dry-run
```
#### Generate:
```
docker compose -f docker-compose.yml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email eugenestudio@mail.ru --agree-tos --non-interactive --expand -d eugenestudio.fun
```

#### © Eugene Denkevich, 2026.
