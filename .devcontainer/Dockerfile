FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Instala o PostgreSQL de forma nativa e limpa os caches para economizar espaço
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Garante que o serviço do PostgreSQL sempre inicialize com o container
RUN systemctl enable postgresql