-- Populando o mistério
-- DML: Data Manipulation Language

-- Cabines
INSERT INTO cabines VALUES ('001', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('002', 'Primeira Classe', 'A', 'Trancada por dentro');
INSERT INTO cabines VALUES ('003', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('004', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('009', 'Segunda Classe', 'B', 'Aberta');

-- Passageiros (Baseado no livro)
INSERT INTO passageiros (nome, codinome, profissao, nacionalidade, cidade_origem, num_cabine, bagagem_principal, preferencia_jantar) VALUES 
('Hercule Poirot', NULL, 'Detetive', 'Belga', 'Bruxelas', '001', 'Maleta de couro', 'Omelete de ervas'),
('Samuel Ratchett', 'Cassetti', 'Empresário', 'Americano', 'Nova York', '002', 'Cofre de metal', 'Vinho tinto e carne mal passada'),
('Hector MacQueen', NULL, 'Secretário', 'Americano', 'Nova York', '003', 'Pasta de documentos', 'Sopa de cebola'),
('Edward Masterman', NULL, 'Mordomo', 'Britânico', 'Londres', '004', 'Kit de polimento', 'Chá preto'),
('Natalia Dragomiroff', NULL, 'Princesa', 'Russa', 'Paris', '009', 'Joias e peles', 'Caviar e Champagne'),
('Mary Debenham', NULL, 'Governanta', 'Britânica', 'Bagdá', '010', 'Livro de notas', 'Salada leve'),
('Arbuthnot', NULL, 'Coronel', 'Britânico', 'Calcutá', '011', 'Caixa de charutos', 'Uísque puro');

-- Arquivo Criminal (Pista do Capítulo 1: O caso Armstrong)
INSERT INTO arquivos_criminais (nome_alvo, crime_cometido, ano_ocorrencia, status_justica) VALUES 
('Cassetti', 'Sequestro e assassinato de Daisy Armstrong. Fugiu com o dinheiro do resgate.', 1930, 'Foragido');

-- Depoimentos (Pista do Capítulo 2: Álibis)
-- O assassinato foi à 01:15.
INSERT INTO depoimentos (id_passaporte, relato, horario_alegado) VALUES 
(3, 'Eu estava conversando com o Coronel Arbuthnot sobre política até tarde.', '01:10:00'),
(4, 'Preparei o remédio de dormir do Sr. Ratchett e fui para minha cabine.', '23:00:00'),
(5, 'Minha empregada estava lendo para mim, não saí da cama.', '01:15:00');

-- Registro de Movimentação (Pista Real: Alguém mentiu!)
INSERT INTO registro_movimentacao VALUES 
(1, 3, 'Corredor Vagão A', '01:15:00', 'Visto usando um roupão escarlate correndo em direção à cabine 002'),
(2, 7, 'Vagão Restaurante', '01:00:00', 'Fumando um charuto sozinho');