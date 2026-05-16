FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Instala o PostgreSQL de forma nativa
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Altera as regras do pg_hba.conf para permitir conexões locais sem senha (trust)
RUN sed -i "s/local   all             all                                     peer/local   all             all                                     trust/g" /etc/postgresql/14/main/pg_hba.conf \
    && sed -i "s/host    all             all             127.0.0.1\/32            scram-sha-256/host    all             all             127.0.0.1\/32            trust/g" /etc/postgresql/14/main/pg_hba.conf