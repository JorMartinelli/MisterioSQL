FROM rocker/r-ver:4.4.2

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y \
    build-essential \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libgit2-dev \
    python3-pip \
    python3-dev \
    python3-venv \
    git \
    git-lfs \
    curl \
    vim \
    sudo \
    gnupg2 \
    apt-transport-https \
    ca-certificates \
    postgresql \
    postgresql-contrib \
    dirmngr \
    && git lfs install \
    && rm -rf /var/lib/apt/lists/*

# Criar link simbólico para python
RUN ln -sf /usr/bin/python3 /usr/local/bin/python

# Instalar Jupyter e ferramentas Python
RUN pip3 install --no-cache-dir --break-system-packages \
    jupyterlab \
    notebook \
    ipykernel \
    polars>=1.0.0 \
    radian \
    stemgraphic \
    matplotlib \
    seaborn \
    pandas \
    numpy \
    scipy \
    scikit-learn \
    plotly \
    pyarrow \
    psycopg2-binary

# Instalar pacotes R necessários

# Registrar o kernel R no Jupyter
RUN R -e "IRkernel::installspec(user = FALSE)"

# Criar usuário vscode (compatível com Codespaces)
RUN useradd -m -s /bin/bash vscode && \
    usermod -aG sudo vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# --- AS DUAS LINHAS NOVAS ESTÃO AQUI ---
# Configura o Postgres para aceitar conexões locais do usuário vscode sem senha
RUN PG_VERSION=$(ls /etc/postgresql) && \
    sed -i "s/local.*all.*postgres.*peer/local all postgres trust/g" /etc/postgresql/$PG_VERSION/main/pg_hba.conf && \
    echo "local all vscode trust" >> /etc/postgresql/$PG_VERSION/main/pg_hba.conf

# Configurar diretório de trabalho
WORKDIR /workspaces

# Mudar para usuário vscode
USER vscode