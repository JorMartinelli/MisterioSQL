#!/bin/bash

# Aguarda o PostgreSQL iniciar completamente
until pg_isready -q; do
  echo "Aguardando o banco de dados iniciar..."
  sleep 1
done

echo "O banco de dados está pronto! Iniciando a investigação..."

# Cria o banco de dados do mistério
psql -U postgres -c "CREATE DATABASE expresso;" 2>/dev/null || echo "Banco já existe."

# Executa o DDL (Estrutura) e o DML (Pistas)
psql -U postgres -d expresso -f setup.sql
psql -U postgres -d expresso -f data.sql

echo "--------------------------------------------------------"
echo "🔍 Pistas injetadas com sucesso!"
echo "Digite 'psql -U postgres -d expresso' para começar."
echo "--------------------------------------------------------"