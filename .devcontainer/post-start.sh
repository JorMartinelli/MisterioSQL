#!/bin/bash

# Garante que o serviço do Postgres no Ubuntu está ligado
sudo service postgresql start

# Aguarda o banco ficar pronto para conexões locais como superusuário
until sudo -u postgres pg_isready -q; do
  echo "Aguardando o banco de dados iniciar..."
  sleep 2
done

echo "O banco de dados está pronto! Iniciando a investigação..."

# Cria o banco de dados do mistério caso não exista (executando como usuário postgres)
sudo -u postgres psql -c "CREATE DATABASE expresso;" 2>/dev/null || echo "Banco já existe."

# Executa o DDL (Estrutura) e o DML (Pistas) usando o usuário postgres
sudo -u postgres psql -d expresso -f setup.sql
sudo -u postgres psql -d expresso -f data.sql

echo "--------------------------------------------------------"
echo "🔍 Pistas injetadas com sucesso!"
echo "Digite no terminal: psql -U postgres -d expresso"
echo "--------------------------------------------------------"