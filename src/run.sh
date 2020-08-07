docker-compose down
docker-compose build
docker-compose up -d letsencrypt
docker-compose up -d app
