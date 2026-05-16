FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Instala o PostgreSQL de forma nativa
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends postgresql postgresql-contrib \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Limpa o arquivo hba original e força regras explícitas de confiança total para o ambiente de desenvolvimento
RUN echo "local   all             all                                     trust" > /etc/postgresql/14/main/pg_hba.conf \
    && echo "host    all             all             127.0.0.1/32            trust" >> /etc/postgresql/14/main/pg_hba.conf \
    && echo "host    all             all             ::1/128                 trust" >> /etc/postgresql/14/main/pg_hba.conf