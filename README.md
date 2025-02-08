# portainer

My Portainer homelab stack

## Get started

```bash
echo "DOMAIN=example.com" > .env
echo "PIHOLE_PASSWORD=$(pwgen 32 -n1)" >> .env
./cert-gen.sh "example.com"
docker compose up -d
```
