```dockerfile id="v9h2sr"
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Instalar PostgreSQL
RUN apt-get update && \
    apt-get install -y postgresql postgresql-contrib && \
    rm -rf /var/lib/apt/lists/*

# Permitir acesso local sem senha
RUN PG_VERSION=$(ls /etc/postgresql) && \
    sed -i 's/local\s\+all\s\+postgres\s\+peer/local all postgres trust/' /etc/postgresql/$PG_VERSION/main/pg_hba.conf && \
    echo "local all all trust" >> /etc/postgresql/$PG_VERSION/main/pg_hba.conf

# Diretório padrão
WORKDIR /workspaces
```
