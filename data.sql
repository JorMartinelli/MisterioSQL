-- Populando o mistério
-- DML: Data Manipulation Language

-- Cabines
INSERT INTO cabines VALUES ('001', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('002', 'Primeira Classe', 'A', 'Trancada por dentro');
INSERT INTO cabines VALUES ('003', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('004', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('009', 'Segunda Classe', 'B', 'Aberta');
INSERT INTO cabines VALUES ('010', 'Segunda Classe', 'B', 'Aberta');
INSERT INTO cabines VALUES ('011', 'Segunda Classe', 'B', 'Aberta');

-- Passageiros e Funcionários (Volume expandido: Culpados e Inocentes)
INSERT INTO passageiros (nome, codinome, profissao, nacionalidade, cidade_origem, num_cabine, bagagem_principal, preferencia_jantar) VALUES 
('Hercule Poirot', NULL, 'Detetive', 'Belga', 'Bruxelas', '001', 'Maleta de couro', 'Omelete de ervas'),
('Samuel Ratchett', 'Cassetti', 'Empresário', 'Americano', 'Nova York', '002', 'Cofre de metal', 'Vinho tinto e carne mal passada'),
('Hector MacQueen', NULL, 'Secretário', 'Americano', 'Nova York', '003', 'Pasta de documentos', 'Sopa de cebola'),
('Edward Masterman', NULL, 'Mordomo', 'Britânico', 'Londres', '004', 'Kit de polimento', 'Chá preto'),
('Natalia Dragomiroff', NULL, 'Princesa', 'Russa', 'Paris', '009', 'Joias e peles', 'Caviar e Champagne'),
('Mary Debenham', NULL, 'Governanta', 'Britânica', 'Bagdá', '010', 'Livro de notas', 'Salada leve'),
('Arbuthnot', NULL, 'Coronel', 'Britânico', 'Calcutá', '011', 'Caixa de charutos', 'Uísque puro'),
('Caroline Hubbard', NULL, 'Atriz', 'Americana', 'Nova York', '003', 'Bolsa de viagem de seda', 'Sopa de tomate'),
('Greta Ohlsson', NULL, 'Enfermeira', 'Sueca', 'Estocolmo', '002', 'Bíblia de bolso', 'Chá de camomila'),
('Antonio Foscarelli', NULL, 'Vendedor de Carros', 'Italiano', 'Roma', '004', 'Amostras de motores', 'Espaguete'),
('Cyrus Hardman', NULL, 'Detetive Privado', 'Americano', 'Texas', '010', 'Distintivo de ferro', 'Bife acebolado'),
('Pierre Michel', NULL, 'Condutor do Trem', 'Francês', 'Marselha', NULL, 'Lanterna e chaves', 'Café expresso'), -- Funcionário (Inocente, mas suspeito)
('Fosco Avelino', NULL, 'Maquinista', 'Italiano', 'Milão', NULL, 'Graxa e ferramentas', 'Massa al pesto'), -- Extra Inocente
('John Schmidt', NULL, 'Cozinheiro', 'Alemão', 'Berlim', NULL, 'Facas de corte e avental', 'Salsicha alemã'), -- Extra Inocente
('Countess Andrenyi', NULL, 'Aristocrata', 'Húngara', 'Budapeste', '011', 'Maleta de maquiagem', 'Frutas frescas');

-- Arquivo Criminal (Pista do Capítulo 1: O caso Armstrong)
INSERT INTO arquivos_criminais (nome_alvo, crime_cometido, ano_ocorrencia, status_justica) VALUES 
('Cassetti', 'Sequestro e assassinato de Daisy Armstrong. Fugiu com o dinheiro do resgate.', 1930, 'Foragido');

-- Depoimentos (Pista do Capítulo 2: Álibis)
-- O assassinato foi à 01:15.
INSERT INTO depoimentos (id_passaporte, relato, horario_alegado) VALUES 
(3, 'Eu estava conversando com o Coronel Arbuthnot sobre política até tarde na cabine dele.', '01:10:00'),
(4, 'Preparei o remédio de dormir do Sr. Ratchett, organizei suas roupas e fui direto para minha cabine.', '23:00:00'),
(5, 'Minha criada estava lendo para mim até tarde. Tenho sono fraco e não saí da cama a noite toda.', '01:15:00'),
(8, 'Eu juro por tudo que é mais sagrado! Havia uma faca de cozinha ensanguentada escondida na minha bolsa!', '01:30:00'),
(9, 'Eu estava administrando um calmante para a Sra. Hubbard e depois fui rezar.', '01:00:00'),
(12, 'Eu estava sentado no banco do corredor o tempo todo, mas acabei cochilando por alguns minutos.', '01:15:00'),
(13, 'Eu não saí da cabine de comando da locomotiva. Estava controlando a pressão do vapor devido ao gelo.', '01:15:00');

-- Registro de Movimentação (Pista Real: Alguém mentiu!)
INSERT INTO registro_movimentacao VALUES 
(1, 3, 'Corredor Vagão A', '01:15:00', 'Visto usando um roupão escarlate correndo em direção à cabine 002'),
(2, 7, 'Vagão Restaurante', '01:00:00', 'Fumando um charuto sozinho perto da janela'),
(3, 9, 'Corredor Vagão B', '01:10:00', 'Caminhando apressada segurando um lenço'),
(4, 12, 'Corredor Vagão A', '01:15:00', 'Dormindo profundamente na cadeira de serviço'),
(5, 14, 'Vagão Cozinha', '01:00:00', 'Organizando os estoques de carne para o dia seguinte'),
(6, 11, 'Corredor Vagão A', '01:20:00', 'Saindo de fininho do banheiro coletivo');