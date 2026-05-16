```bash
#!/usr/bin/env bash
set -euo pipefail

echo "[setup] Starting post-create setup..."

# =========================================================
# 1. INICIAR O POSTGRESQL
# =========================================================

echo "[setup] Starting PostgreSQL service..."
sudo service postgresql start

# Espera alguns segundos para o PostgreSQL abrir corretamente
sleep 3

# =========================================================
# 2. CRIAR O BANCO DO JOGO
# =========================================================

echo "[setup] Creating database 'expresso'..."

createdb -U postgres expresso || true

# =========================================================
# 3. CARREGAR AS TABELAS E DADOS
# =========================================================

echo "[setup] Loading Expresso do Oriente database schemas and data..."

if [ -f "setup.sql" ] && [ -f "data.sql" ]; then

    # Remove tabelas antigas caso existam
    psql -U postgres -d expresso -f setup.sql

    # Insere os dados
    psql -U postgres -d expresso -f data.sql

    echo "[setup] Database loaded successfully!"

else
    echo "[setup] Warning: setup.sql or data.sql not found in workspace root."
fi

# =========================================================
# 4. CONFIGURAÇÕES PYTHON/JUPYTER
# =========================================================

# Garantir ~/.local/bin no PATH
if ! echo "$PATH" | tr ':' '\n' | grep -qx "$HOME/.local/bin"; then
  if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
  fi

  export PATH="$HOME/.local/bin:$PATH"

  echo "[setup] Added $HOME/.local/bin to PATH"
fi

# Atualizar pip/setuptools/wheel
echo "[setup] Upgrading pip, setuptools, and wheel..."

python3 -m pip install --no-cache-dir --upgrade --break-system-packages pip setuptools wheel || \
python3 -m pip install --no-cache-dir --upgrade pip setuptools wheel || true

# Garantir kernel Python no Jupyter
echo "[setup] Ensuring Jupyter Python kernel is available for user..."

python3 - <<'PY'
import subprocess
import sys

try:
    subprocess.run([
        sys.executable,
        "-m",
        "ipykernel",
        "install",
        "--user",
        "--name=python3",
        "--display-name=Python 3"
    ], check=False)

except Exception as e:
    print(f"[setup] ipykernel install skipped/failed: {e}")
PY

# =========================================================
# 5. CONFIGURAÇÕES R
# =========================================================

echo "[setup] Configuring R user library and installing common packages..."

mkdir -p "$HOME/R/library"

if ! grep -q "R_LIBS_USER" "$HOME/.Renviron" 2>/dev/null; then
  echo 'R_LIBS_USER="~/R/library"' >> "$HOME/.Renviron"
fi

Rscript - <<'RS'
options(repos = c(CRAN = "https://cloud.r-project.org"))

dir.create(Sys.getenv("R_LIBS_USER"),
           recursive = TRUE,
           showWarnings = FALSE)

.libPaths(Sys.getenv("R_LIBS_USER"))

pkgs <- c(
  "IRkernel",
  "languageserver",
  "ggplot2",
  "dplyr",
  "tidyr"
)

installed <- rownames(installed.packages())

to_install <- setdiff(pkgs, installed)

if (length(to_install)) {
  message("[setup:R] Installing: ",
          paste(to_install, collapse = ", "))

  install.packages(to_install, Ncpus = 2)

} else {
  message("[setup:R] All target packages already installed.")
}

ok <- FALSE

try({
  IRkernel::installspec(user = FALSE)
  ok <- TRUE
}, silent = TRUE)

if (!ok) {
  try({
    IRkernel::installspec(user = TRUE)
    ok <- TRUE
  }, silent = TRUE)
}

if (!ok) {
  message("[setup:R] Warning: Could not register IRkernel.")
} else {
  message("[setup:R] IRkernel registration ensured.")
}
RS

# =========================================================
# 6. FINALIZAÇÃO
# =========================================================

echo ""
echo "[setup] ========================================"
echo "[setup] Setup finished successfully!"
echo "[setup] Connect using:"
echo "[setup] psql -U postgres -d expresso"
echo "[setup] ========================================"
```
