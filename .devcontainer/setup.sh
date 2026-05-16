```bash id="lx4eyq"
#!/usr/bin/env bash
set -euo pipefail

echo "[setup] Starting post-create setup..."

echo "[setup] Starting PostgreSQL service..."
sudo service postgresql start

sleep 3

echo "[setup] Creating database 'expresso'..."
createdb -U postgres expresso || true

echo "[setup] Loading database schemas and data..."

if [ -f "setup.sql" ] && [ -f "data.sql" ]; then

    psql -U postgres -d expresso -f setup.sql
    psql -U postgres -d expresso -f data.sql

    echo "[setup] Database loaded successfully!"

else
    echo "[setup] Warning: setup.sql or data.sql not found."
fi

echo ""
echo "[setup] ========================================"
echo "[setup] Setup finished successfully!"
echo "[setup] Connect using:"
echo "[setup] psql -U postgres -d expresso"
echo "[setup] ========================================"
```

```
