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
INSERT INTO cabines VALUES ('012', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('005', 'Primeira Classe', 'A', 'Aberta');
INSERT INTO cabines VALUES ('006', 'Primeira Classe', 'A', 'Aberta');

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
('Pierre Michel', NULL, 'Condutor do Trem', 'Francês', 'Marselha', NULL, 'Lanterna e chaves', 'Café expresso'),
('Fosco Avelino', NULL, 'Maquinista', 'Italiano', 'Milão', NULL, 'Graxa e ferramentas', 'Massa al pesto'),
('John Schmidt', NULL, 'Cozinheiro', 'Alemão', 'Berlim', NULL, 'Facas de corte e avental', 'Salsicha alemã'),
('Countess Andrenyi', NULL, 'Aristocrata', 'Húngara', 'Budapeste', '011', 'Maleta de maquiagem', 'Frutas frescas'),
('Rudi Lindenfeld', NULL, 'Engenheiro', 'Suíço', 'Zurique', '012', 'Maleta de desenhos', 'Cerveja e salsicha'),
('Helene Armstrong', NULL, 'Viúva', 'Americana', 'Nova York', '005', 'Malas pretas com iniciais', 'Chá de gengibre'),
('Vladimir Armstrong', NULL, 'Engenheiro Industrial', 'Americano', 'Boston', '006', 'Planos e projetos', 'Vinho branco e peixe');

-- Arquivo Criminal (Totalmente embaralhado e camuflado)
INSERT INTO arquivos_criminais (nome_alvo, crime_cometido, ano_ocorrencia, status_justica) VALUES 
('Mikhail Volkov', 'Contrabando de joias e pedras preciosas. Operava entre Moscou e Paris.', 1928, 'Encarcerado'),
('Giuseppe Marconi', 'Fraude bancária e falsificação de documentos. Roubou 50 mil libras.', 1925, 'Foragido'),
('Hector MacQueen', 'Investigação de conexão a caso Armstrong. Relacionamento familiar não revelado publicamente.', 1930, 'Aberto'),
('Elizabeth Ashford', 'Roubo de diamantes na Joia da Coroa. Condenada a 15 anos.', 1922, 'Encarcerado'),
('Pierre Dubois', 'Tráfico de armas. Vendedor para grupos criminosos europeus.', 1927, 'Foragido'),
('Katarina Novikov', 'Estelionato. Enganava viúvas ricas fingindo ser aristocrata.', 1929, 'Encarcerado'),
('Natalia Dragomiroff', 'Movimento de fundos suspeitos conectados a família aristocrática envolvida em caso de sequestro da família Armstrong.', 1930, 'Aberto'),
('Thomas Mulligan', 'Assalto à mão armada. 12 bancos roubados entre 1920-1925.', 1925, 'Encarcerado'),
('Sofia Rossi', 'Assassinato do marido por envenenamento. Suspeita de envenenar 3 mulheres.', 1926, 'Foragido'),
('Edward Masterman', 'Investigação de envolvimento com família Armstrong. Criado envolvido em incidente de 1930.', 1930, 'Aberto'),
('Johann Weber', 'Falsificação de moedas. Produzia marcos falsos.', 1924, 'Encarcerado'),
('Marie Lafitte', 'Extorsão e chantagem. Vítimas incluem políticos e homens de negócios.', 1928, 'Foragido'),
('Dimitri Petrov', 'Tráfico de mulheres. Operava entre a Rússia e Constantinopla.', 1927, 'Foragido'),
('Mary Debenham', 'Investigação de envolvimento profissional com família-alvo de caso criminal de 1930 (Caso Armstrong).', 1930, 'Aberto'),
('Henry Blackwell', 'Roubo de ouro em trânsito. Conspiração com funcionários ferroviários.', 1923, 'Encarcerado'),
('Lucia Moretti', 'Fraude imobiliária. Vendia casarões que não possuía.', 1929, 'Encarcerado'),
('Arbuthnot', 'Investigação de conhecimento de crime contra família Armstrong. Relacionamento com envolvida.', 1930, 'Aberto'),
('Albert Schmidt', 'Venda ilegal de álcool durante proibição. Operava em Berlim.', 1927, 'Encarcerado'),
('Josephine Marchand', 'Roubo de documentos confidenciais. Espionagem industrial.', 1928, 'Foragido'),
('Cassetti', 'Sequestro e assassinato de Daisy Armstrong. Fugiu com o dinheiro do resgate.', 1930, 'Foragido'),
('Viktor Sandor', 'Assassinato de rival comercial. Condenado a morte, escapou durante fuga.', 1926, 'Foragido'),
('Clara Hoffmann', 'Estelionato. Enganava empresários com esquemas de investimento.', 1929, 'Encarcerado'),
('Caroline Hubbard', 'Investigação de laços familiares com vítima de sequestro de 1930 do caso Armstrong. Possível herdeira.', 1930, 'Aberto'),
('Antonio Pellegrini', 'Roubo de arte. Especializado em roubo de quadros de museus.', 1925, 'Encarcerado'),
('Margot Leclerc', 'Incêndio criminoso. Queimou um hotel para cobrar seguro.', 1927, 'Encarcerado'),
('Greta Ohlsson', 'Investigação de envolvimento profissional com criança sequestrada em 1930 no caso Armstrong. Culpa psicológica.', 1930, 'Aberto'),
('Victor Kaplan', 'Fraude de seguro de vida. Assassinou 2 pessoas para cobrar apólices.', 1924, 'Encarcerado'),
('Helene Bergmann', 'Tráfico de obras de arte roubadas. Conectada a colecionadores nazistas.', 1929, 'Foragido'),
('Antonio Foscarelli', 'Investigação de emprego com família-alvo de crime grave (Caso Armstrong). Conhecimento de movimentos suspeitos.', 1930, 'Aberto'),
('Eduard Korsakov', 'Prostituição forçada e exploração de mulheres jovens.', 1928, 'Foragido'),
('Marguerite Beaumont', 'Envenenamento de herança. Assassinou avó para ganhar fortuna.', 1926, 'Encarcerado'),
('Cyrus Hardman', 'Investigação de envolvimento emocional com caso Armstrong. Relacionamento com criança afetada.', 1930, 'Aberto'),
('Hermann Becker', 'Roubo de ferrovias. Conspiração com maquinistas.', 1925, 'Encarcerado'),
('Adelina Santoro', 'Falsificação de passaportes. Operava em Roma e Milão.', 1928, 'Encarcerado'),
('Countess Andrenyi', 'Investigação de conexão familiar com envolvida em caso de sequestro de 1930 da família Armstrong.', 1930, 'Aberto'),
('Rudolf Hoffman', 'Roubo a mão armada em estações de trem.', 1923, 'Foragido'),
('Françoise Moreau', 'Roubo de joias de sua mãe. Tentou venda no mercado negro.', 1929, 'Encarcerado'),
('Helene Armstrong', 'Viúva de vítima colateral do caso Armstrong. Envolvimento em caso criminal que destruiu sua família.', 1930, 'Aberto'),
('Alexei Volkov', 'Assassinato por encargo. Contratado para eliminar rivais políticos.', 1926, 'Foragido'),
('Beatrice Winterthur', 'Fraude matrimonial. Casava com homens ricos e desaparecia com fortuna.', 1927, 'Foragido'),
('Vladimir Armstrong', 'Parente de vítima de sequestro de 1930. Possível envolvimento em investigação privada sobre o caso Armstrong.', 1930, 'Aberto'),
('Wilhelm Krause', 'Explosivo. Venda ilegal de dinamite para grupos extremistas.', 1928, 'Encarcerado'),
('Rosina Gallo', 'Roubo de jóias da Rainha. Roubo de brincos de diamante.', 1924, 'Encarcerado'),
('Rudi Lindenfeld', 'Cúmplice no sequestro de Daisy Armstrong. Responsável pelo transporte da criança. Não foi pago pelo trabalho', 1930, 'Foragido'),
('Stanislaw Kowalski', 'Assassinato de colega de trabalho. Disputa por promoção.', 1925, 'Foragido'),
('Yvonne Mercier', 'Chantagem de homens proeminentes com fotos comprometedoras.', 1929, 'Foragido'),
('Igor Petrov', 'Roubo de armamento militar. Vendia para grupos paramilitares.', 1927, 'Encarcerado'),
('Constance Ashford', 'Roubo em lojas. Operou em Londres e Paris por 10 anos.', 1928, 'Encarcerado'),
('Maximilian von Stein', 'Fraude de títulos nobiliários falsos.', 1926, 'Encarcerado'),
('Veronica Lombardi', 'Abandono de filho. Deixou criança em orfanato para coletar herança.', 1925, 'Encarcerado'),
('Pavel Sokolov', 'Assalto a joalherias. Especialista em roubo de segredos comerciais.', 1927, 'Foragido'),
('Antoinette Bernard', 'Venda de informações confidenciais a concorrentes.', 1928, 'Foragido'),
('Stefan Novak', 'Roubo de documentos do governo. Venda de segredos militares.', 1929, 'Foragido'),
('Gabrielle Renard', 'Falsificação de certificados médicos e receitas.', 1926, 'Encarcerado'),
('Friedrich Bergstrom', 'Tráfico de ouro e diamantes ilegais.', 1927, 'Encarcerado'),
('Isabelle de Montfort', 'Envenenamento. Três maridos morreram em circunstâncias suspeitas.', 1924, 'Foragido'),
('Gennady Orlov', 'Roubo de safes. Especialista em assaltos a joalherias.', 1928, 'Encarcerado'),
('Theresa Bianchi', 'Extorsão de comerciantes. Proteção criminosa.', 1929, 'Encarcerado'),
('Bertrand Martel', 'Falsificação de obras de arte. Copias de mestres famosos.', 1925, 'Foragido'),
('Olga Smirnoff', 'Roubo de pérolas da Duquesa. Operava em Praga.', 1926, 'Encarcerado'),
('Leopold Keller', 'Fraude de bens imóveis. Vendeu castelo que não era seu.', 1927, 'Foragido'),
('Natasha Orlova', 'Estelionato de viajantes em estações ferroviárias.', 1928, 'Encarcerado'),
('Umberto Rossi', 'Envenenamento de rival em disputa de terras.', 1923, 'Encarcerado'),
('Vivienne Fontaine', 'Roubo de coleção de arte privada. Quadros de valor inestimável.', 1929, 'Foragido'),
('Anatoly Berezin', 'Assassinato por rixas de negócios. Competição em contrabando.', 1925, 'Encarcerado'),
('Cordelia Ashworth', 'Envenenamento lento de esposo. Acumulação de arsênico.', 1927, 'Encarcerado'),
('Christoph Mueller', 'Roubo de selos raros de coleção real. Documentos históricos.', 1926, 'Foragido'),
('Ludmila Volkova', 'Roubo de jóias usando técnica de distração. Operava em teatros.', 1928, 'Encarcerado'),
('Salvatore Caruso', 'Chantagem criminosa. Enxovia de figuras políticas.', 1929, 'Foragido'),
('Margot Steinberg', 'Falsificação de joias. Venda de cristal como diamante.', 1927, 'Encarcerado'),
('Nikolai Orlov', 'Roubo de ferrovias. Roubo de cargamento de ouro em trânsito.', 1924, 'Foragido'),
('Arabella Kingsley', 'Fraude de seguro. Roubo falso de jóias para cobrar apólices.', 1928, 'Encarcerado'),
('Cesare Tossini', 'Assassinato de comerciante rival. Disputa territorial.', 1926, 'Encarcerado'),
('Diane Rousseau', 'Roubo de ouro em barras. Operava portos de Marselha.', 1925, 'Foragido'),
('Gregor Volkov', 'Tráfico de armas e munições. Venda para grupos revolucionários.', 1927, 'Encarcerado'),
('Henrietta von Altenberg', 'Envenenamento de rival em concurso de herança. Morte lenta.', 1929, 'Foragido'),
('Iacopo Rosselli', 'Roubo de moedas raras. Coleção histórica do Vaticano.', 1923, 'Encarcerado'),
('Juliette Moreau', 'Conspiração para envenenamento em massa. Produtos farmacêuticos.', 1926, 'Foragido'),
('Konrad Schneider', 'Falsificação de documentos de herança. Fraude testamentária.', 1928, 'Encarcerado'),
('Ludmila Smirnova', 'Roubo de joias em residências de aristocratas. Operava sozinha.', 1929, 'Foragido'),
('Marcel Fontaine', 'Roubo em museus. Especialista em arte moderna.', 1925, 'Encarcerado'),
('Natalia Volkova', 'Chantagem de mulheres de políticos com cartas de amor.', 1927, 'Encarcerado'),
('Octavio Lombardi', 'Assassinato de devedor. Execução de rival comercial.', 1924, 'Foragido'),
('Pamela Ashworth', 'Roubo de dinheiro em transportes ferroviários.', 1928, 'Encarcerado'),
('Quintus Delacroix', 'Falsificação de vinho. Envelhecimento acelerado de bebidas falsas.', 1926, 'Foragido'),
('Rosalinde von Kraft', 'Envenenamento de companheiras. Morte por estricnina.', 1929, 'Encarcerado'),
('Sebastien Leblanc', 'Roubo de ouro de banco. Conspiração com gerentes.', 1923, 'Foragido'),
('Tatiana Orlovskaya', 'Extorsão de industrialistas. Ameaças de publicação de segredos.', 1927, 'Encarcerado'),
('Ulpiano Calabrese', 'Roubo de quadro de Caravaggio. Obra roubada em Nápoles.', 1925, 'Foragido'),
('Valeria Montez', 'Fraude de ouro. Venda de chumbo revestido como ouro puro.', 1928, 'Encarcerado'),
('Wilhelm van der Berg', 'Falsificação de cheques de banco. Operava em Amsterdã.', 1926, 'Foragido'),
('Xenia Stavropoulou', 'Roubo de cofre de jóias em trem luxuoso. Crime durante viagem.', 1929, 'Encarcerado'),
('Yves Blanchard', 'Assassinato por despecho. Morte de ex-noiva e seu novo marido.', 1924, 'Foragido'),
('Zita Rosenberg', 'Envenenamento de sócio. Morte por cianeto em bebida.', 1927, 'Encarcerado');

-- Depoimentos (Pista do Capítulo 2: Álibis)
-- O assassinato foi à 01:15.
INSERT INTO depoimentos (id_passaporte, relato, horario_alegado) VALUES 
(3, 'Eu estava conversando com o Coronel Arbuthnot sobre política até tarde na cabine dele.', '01:10:00'),
(4, 'Preparei o remédio de dormir do Sr. Ratchett, organizei suas roupas e fui direto para minha cabine.', '23:00:00'),
(5, 'Minha criada estava lendo para mim até tarde. Tenho sono fraco e não saí da cama a noite toda.', '01:15:00'),
(8, 'Eu juro por tudo que é mais sagrado! Havia uma faca de cozinha ensanguentada escondida na minha bolsa!', '01:30:00'),
(9, 'Eu estava administrando um calmante para a Sra. Hubbard e depois fui rezar.', '01:00:00'),
(12, 'Eu estava sentado no banco do corredor o tempo todo, mas acabei cochilando por alguns minutos.', '01:15:00'),
(13, 'Eu não saí da cabine de comando da locomotiva. Estava controlando a pressão do vapor devido ao gelo.', '01:15:00'),
(16, 'Estava em minha cabine estudando uns desenhos técnicos. Ouvi um grito abafado mas como é um trem, ignorei.', '01:00:00'),
(17, 'Eu permaneci em meu camarote o tempo todo, tentando dormir e esquecer meus sofrimentos.', '01:15:00'),
(18, 'Andei pelo vagão mas não vi nada de especial. Estava fumando e refletindo sobre os negócios.', '01:20:00');

-- Registro de Movimentação (Pista Real: Alguém mentiu!)
INSERT INTO registro_movimentacao VALUES 
(1, 3, 'Corredor Vagão A', '01:15:00', 'Visto usando um roupão escarlate correndo em direção à cabine 002'),
(2, 7, 'Vagão Restaurante', '01:00:00', 'Fumando um charuto sozinho perto da janela'),
(3, 9, 'Corredor Vagão B', '01:10:00', 'Caminhando apressada segurando um lenço'),
(4, 12, 'Corredor Vagão A', '01:15:00', 'Dormindo profundamente na cadeira de serviço'),
(5, 14, 'Vagão Cozinha', '01:00:00', 'Organizando os estoques de carne para o dia Newtonsoft'),
(6, 11, 'Corredor Vagão A', '01:20:00', 'Saindo de fininho do banheiro coletivo'),
(7, 16, 'Corredor Vagão A', '01:15:00', 'Visto segurando uma faca ensanguentada saindo da cabine 002'),
(8, 16, 'Vagão Restaurante', '01:15:00', 'Visto sentado sozinho bebendo'),
(9, 3, 'Corredor Vagão A', '01:12:00', 'Saindo de sua cabine com olhar distante'),
(10, 4, 'Corredor Vagão A', '01:13:00', 'Visto apressado em direção ao vagão-restaurante'),
(11, 5, 'Corredor Vagão B', '01:14:00', 'Caminhando lentamente com bengala, passando pelo corredor'),
(12, 6, 'Corredor Vagão B', '01:15:00', 'Visto saindo de sua cabine com aspecto nervoso'),
(13, 7, 'Corredor Vagão B', '01:14:00', 'Fumando charuto, caminhando de forma deliberada'),
(14, 8, 'Corredor Vagão A', '01:16:00', 'Regressando para sua cabine com roupão despenteado'),
(15, 9, 'Vagão Restaurante', '01:12:00', 'Servindo chá para passageiro que a chamou'),
(16, 10, 'Corredor Vagão A', '01:15:00', 'Visto saindo apressado, camisa manchada'),
(17, 11, 'Corredor Vagão B', '01:17:00', 'Regressando lentamente para sua cabine'),
(18, 15, 'Corredor Vagão B', '01:13:00', 'Caminhando nervosamente passando pelas cabines'),
(19, 17, 'Corredor Vagão A', '01:11:00', 'Saindo silenciosamente de sua cabine'),
(20, 18, 'Corredor Vagão A', '01:14:00', 'Caminhando em direção ao vagão de primeira classe');

-- Soluções de Validação do Sistema
INSERT INTO solucao (assassino, mensagem) VALUES
('Rudi Lindenfeld', 'Parabéns! Você descobriu o assassino óbvio. Mas espere... algo não está certo. Verifique os registros de movimentação com mais cuidado. O mistério não acaba aqui.'),
('Antonio Foscarelli, Arbuthnot, Caroline Hubbard, Countess Andrenyi, Cyrus Hardman, Edward Masterman, Greta Ohlsson, Hector MacQueen, Helene Armstrong, Mary Debenham, Natalia Dragomiroff, Vladimir Armstrong', 'EXCELENTE! Você descobriu a verdade. Doze pessoas, conectadas pela mesma tragédia, pela mesma fome de justiça. Cada facada era um gesto de vingança. Hercule Poirot tinha razão: a verdade não é um culpado. A verdade é um círculo de mãos. Você resolveu o mistério como um verdadeiro detetive.');