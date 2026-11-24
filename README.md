git clone https://github.com/Zarva21/minecraft-aws-server.git
cd minecraft-aws-server

chmod +x scripts/setup-ubuntu.sh
./scripts/setup-ubuntu.sh

newgrp docker

cp .env.example .env
nano .env

MC_VERSION=26.3
MC_MEMORY=6G
MC_OPS=TuUsuarioDeMinecraft

docker compose up -d && docker logs -f mc-server
