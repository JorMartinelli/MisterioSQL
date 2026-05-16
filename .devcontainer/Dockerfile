FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Instala o PostgreSQL de forma nativa
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Altera as regras do pg_hba.conf lidando corretamente com tabulações e espaços
RUN sed -i -E "s/local[[:space:]]+all[[:space:]]+all[[:space:]]+peer/local   all             all                                     trust/g" /etc/postgresql/14/main/pg_hba.conf \
    && sed -i -E "s/host[[:space:]]+all[[:space:]]+all[[:space:]]+127.0.0.1\/32[[:space:]]+scram-sha-256/host    all             all             127.0.0.1\/32            trust/g" /etc/postgresql/14/main/pg_hba.conf