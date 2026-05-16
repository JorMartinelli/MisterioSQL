#!/bin/bash

# Inicia o servidor do PostgreSQL em background (usando a ferramenta de inicialização nativa do Postgres)
pg_ctlcluster 14 main start

# Aguarda o banco ficar totalmente online
until pg_isready -U postgres -q; do
  echo "Aguardando o banco de dados iniciar..."
  sleep 2
done

echo "O banco de dados está pronto! Iniciando a investigação..."

# Cria o banco de dados do mistério caso não exista
psql -U postgres -c "CREATE DATABASE expresso;" 2>/dev/null || echo "Banco já existe."

# Executa o DDL (Estrutura) e o DML (Pistas)
psql -U postgres -d expresso -f setup.sql
psql -U postgres -d expresso -f data.sql

echo "--------------------------------------------------------"
echo "🔍 Pistas injetadas com sucesso!"
echo "Digite no terminal: psql -U postgres -d expresso"
echo "--------------------------------------------------------"