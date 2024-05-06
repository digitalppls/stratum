scp -r code/* root@mining:/stratum
docker context use mining
docker compose up -d
docker context use desktop-linux