```bash id="8i0mcc"
#!/usr/bin/env bash

set -e

echo "[setup] Starting PostgreSQL..."

sudo service postgresql start

sleep 3

echo "[setup] Creating database..."

createdb -U postgres expresso || true

echo "[setup] Loading schema..."

psql -U postgres -d expresso -f setup.sql

echo "[setup] Loading data..."

psql -U postgres -d expresso -f data.sql

echo ""
echo "[setup] ====================================="
echo "[setup] Database ready!"
echo "[setup] Run:"
echo "[setup] psql -U postgres -d expresso"
echo "[setup] ====================================="
```
