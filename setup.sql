-- Criando a estrutura do banco de dados do Expresso do Oriente
-- DDL: Data Definition Language

DROP TABLE IF EXISTS registro_movimentacao;
DROP TABLE IF EXISTS depoimentos;
DROP TABLE IF EXISTS passageiros;
DROP TABLE IF EXISTS cabines;
DROP TABLE IF EXISTS arquivos_criminais;

CREATE TABLE cabines (
    num_cabine VARCHAR(10) PRIMARY KEY,
    classe VARCHAR(20),
    vagao CHAR(1),
    status_porta VARCHAR(20) -- Aberta, Trancada por dentro, Trancada por fora
);

CREATE TABLE passageiros (
    id_passaporte SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    codinome VARCHAR(100),
    profissao VARCHAR(50),
    nacionalidade VARCHAR(50),
    cidade_origem VARCHAR(50),
    num_cabine VARCHAR(10) REFERENCES cabines(num_cabine),
    bagagem_principal VARCHAR(100),
    preferencia_jantar VARCHAR(100)
);

CREATE TABLE depoimentos (
    id_depoimento SERIAL PRIMARY KEY,
    id_passaporte INT REFERENCES passageiros(id_passaporte),
    relato TEXT,
    horario_alegado TIME,
    testemunha_mencionada VARCHAR(100)
);

CREATE TABLE registro_movimentacao (
    id_mov INT PRIMARY KEY,
    id_passaporte INT NOT NULL REFERENCES passageiros(id_passaporte),
    local_visto VARCHAR(50),
    horario_visto TIME,
    detalhe_observado VARCHAR(255)
);

CREATE TABLE arquivos_criminais (
    id_caso SERIAL PRIMARY KEY,
    nome_alvo VARCHAR(100),
    crime_cometido TEXT,
    ano_ocorrencia INT,
    status_justica VARCHAR(50)
);