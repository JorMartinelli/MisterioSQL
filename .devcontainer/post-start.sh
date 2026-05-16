#!/bin/bash

# Aguarda o PostgreSQL iniciar completamente usando o caminho absoluto caso necessário
until pg_isready -h localhost -U postgres -q; do
  echo "Aguardando o banco de dados iniciar..."
  sleep 2
done

echo "O banco de dados está pronto! Iniciando a investigação..."

# Cria o banco de dados do mistério caso não exista
psql -h localhost -U postgres -c "CREATE DATABASE expresso;" 2>/dev/null || echo "Banco já existe."

# Executa o DDL (Estrutura) e o DML (Pistas)
psql -h localhost -U postgres -d expresso -f setup.sql
psql -h localhost -U postgres -d expresso -f data.sql

echo "--------------------------------------------------------"
echo "🔍 Pistas injetadas com sucesso!"
echo "Digite no terminal: psql -U postgres -d expresso"
echo "--------------------------------------------------------"