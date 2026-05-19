# 🚂 Mistério no Expresso do Oriente: Um Crime em SQL

> 📖 *“O impossível não pode ter acontecido; portanto, o impossível deve ser possível, apesar das aparências.”* — **Hercule Poirot**
>
> Este projeto é uma homenagem interativa à genialidade de **Agatha Christie**, a eterna Rainha do Crime. O cenário, os personagens e a trama foram inspirados em sua obra-prima de 1934, *Assassinato no Expresso do Oriente*. Aqui, a lógica dedutiva do icônico detetive belga ganha vida através de consultas SQL. Prepare sua mente, ajuste seus bigodes e boa investigação!

## 💻 Como Jogar

1. Clique no botão verde **"Code"** e crie um **Codespace**.
2. Aguarde o terminal terminar de carregar (o banco de dados e as pistas serão injetados sozinhos).
3. No terminal, digite apenas:
   ```bash
   psql -h localhost -U postgres -d expresso
   ```
4. **Dica de detetive:** Use `\dt` para listar as tabelas disponíveis e `\d nome_da_tabela` para entender os metadados (colunas) de cada pista.

---

## 🎮 Como Submeter Suas Respostas

Ao final de cada capítulo investigativo, você precisará submeter seus palpites sobre o assassino.

> ⚠️ **IMPORTANTE:** Leia cada capítulo na sequência. Não pule para o próximo capítulo sem ter completado o atual. A narrativa revela-se progressivamente, e pular etapas pode comprometer sua experiência de investigação.


> 💡Quando você achar que descobriu quem matou Cassetti, procure pelo nome no arquivo criminal e nos registros de movimentação. Compare os dados. Confronte as evidências. Se você chegar a uma conclusão prematura, as pistas podem levá-lo a um caminho inesperado...

## ❄️ Prólogo 

O inverno de 1934 congelava os trilhos da estação de Istambul, mas o interior do Expresso do Oriente exalava luxo, fumaça de tabaco e mistério. Hercule Poirot, o renomado detetive belga, conseguiu uma cabine de última hora graças a um favor antigo. Olhando ao redor do vagão-restaurante, Poirot observou seus companheiros de viagem: uma princesa russa, um coronel britânico, uma governanta enigmática, um vendedor de carros americano e seu patrão, o antipático Sr. Ratchett.

Naquela mesma noite, o Sr. Ratchett procurou Poirot. Parecia apavorado. *"Estão me ameaçando, detetive. Pago-lhe vinte mil dólares para me proteger."* Poirot recusou, alegando que não gostava da cara do americano. Poucas horas depois, uma violenta nevasca bloqueou os trilhos na Iugoslávia. O trem parou no meio do nada. E o silêncio da noite foi cortado por um grito abafado.

---

## 🔍 Capítulo 1: O Corpo na Cabine Nº 2
A manhã trouxe uma descoberta macabra. O Sr. Ratchett foi encontrado morto em sua cabine, esfaqueado doze vezes. O assassino ainda está a bordo, preso no trem pela neve. O diretor da linha férrea implora pela ajuda de Poirot: *"Descubra quem fez isso antes que a polícia iugoslava chegue, ou teremos um incidente internacional!"*

Poirot ajusta seus bigodes e caminha até o corpo. No chão da cabine, as cinzas de uma carta queimada escondem um fragmento de texto legível: **"...lembre-se de Daisy Armstrong..."**.

> 🕵️‍♂️ **Seu primeiro passo como assistente de Poirot:** Precisamos descobrir a identidade real da vítima. Ratchett usava um codinome. Vasculhe os registros de passageiros e arquivos criminais para descobrir quem era esse homem e por que o nome "Armstrong" selou seu destino.

---

## 🕵️‍♂️ Capítulo 2: O Relógio Parado e os Álibis
*"Mon ami"*, diz Poirot, *"o tempo é o senhor da razão."* O relógio de bolso da vítima parou exatamente à **01:15 da manhã** devido ao impacto de uma luta. Agora, precisamos cruzar os horários. O condutor do trem jura que viu alguém com um roupão de seda escarlate correndo pelo corredor por volta desse horário.

Poirot começa os interrogatórios. Todos os passageiros têm um álibi, mas os dados não mentem. É hora de confrontar os depoimentos com os horários de movimentação das cabines registrados pelo condutor.

> 📝 **Sua missão:** Cruze a tabela de depoimentos dos passageiros com a tabela de movimentações. Quem estava fora da sua cabine ou mentiu sobre onde passou a madrugada à 01:15?

---

## 🫖 Capítulo 3: A Pista da Arma do Crime
Ao revistar o vagão-restaurante, a Sra. Hubbard encontra uma faca de cozinha ensanguentada escondida em sua bolsa de viagem. O médico a bordo confirma: o assassino desferiu doze facadas com precisão cirúrgica. Quem teria conhecimento suficiente para desferir golpes tão letais no escuro?

Poirot examina meticulosamente o corredor fora da cabine 002. Há marcas de roupão e umidade no chão. Um detalhes não escapa ao detetive belga.

> 🔎 **Sua missão:** Procure registros de testemunhas que viram alguém se movimentando na hora do crime. Quem foi visto saindo da cabine 002?

## 🔐 Capítulo 4: O Suspeito Perfeito
Enquanto Poirot revisa os registros de movimentação, um nome se destaca. Um passageiro de primeira classe, alguém com antecedentes criminais que o conectam diretamente ao caso Armstrong. Seus antecedentes criminais o conectam ao sequestro de Daisy Armstrong em 1930. 

Testemunhas o viram saindo da cabine 002 com uma faca ensanguentada à 01:15 da manhã. Seu depoimento é vago e sua história não se sustenta quando confrontada com os fatos. O motivo? Ele nunca foi pago pelo trabalho no sequestro de Armstrong — a vingança perfeita.

Poirot reúne todos os dados: crime, arma, motivo, oportunidade. Tudo aponta para este homem de primeira classe.

> 🎯 **Sua investigação:** Procure nos registros de passageiros de primeira classe. Consulte os arquivos criminais. Encontre a conexão do suspeito e o caso Armstrong. Procure os registros de movimentação que o mostram saindo da cabine 002.

---

>💡 Hora de dar o seu palpite! Acha que desvendou o caso? Consulte a tabela solucao para verificar sua teoria. Digite o nome do seu suspeito exatamente como aparece no banco de dados para ver se você está no caminho certo:

```SQL
SELECT mensagem FROM solucao WHERE assassino = 'Nome do Suspeito';
```

## ⚠️ Capítulo 5: O Detalhe que Não Encaixa
Hercule Poirot bate o dedo na mesa, seus olhos azuis brilhando. *"Curiosa,"* murmura. *"Muito curiosa, de fato."*

O suspeito foi visto em **dois locais diferentes, no mesmo horário exato**. Uma testemunha o viu no Corredor do Vagão A à 01:15. Outra testemunha jura tê-lo visto no Vagão Restaurante, também à 01:15, bebendo cerveja tranquilamente.

É fisicamente impossível estar em dois lugares simultaneamente.

Poirot inclina-se para você: *"Mon ami, talvez tenhamos perseguido a pista errada. Ou talvez o assassino queira que acreditemos nisso."*

> 🤔 **Sua investigação:** Procure discrepâncias nos registros de movimentação do passageiro que você suspeita. Que contradições encontra? Ele realmente estava onde diz estar? Verifique duas vezes os horários e locais.

---

## 💭 Capítulo 6: A Confissão de Poirot
Reunidos novamente no vagão-restaurante, Hercule Poirot reúne todos os passageiros. Seu rosto é sério, as mãos cruzadas.

*"Senhoras e senhores,"* começa, *"tenho uma confissão a fazer. O homem que vocês acham ser o assassino... talvez ele nunca tenha estado neste trem."*

Um silêncio de morte toma conta da sala. Poirot continua:

*"Alguém os enganou. Alguém fabricou evidências para incriminá-lo. Mas por quê? Quem teria o conhecimento do caso Armstrong? Quem teria acesso aos registros do trem? Quem poderia orquestrar um engano tão perfeito?"*

Poirot olha diretamente para você: *"A verdade, mon ami, é que o Sr. Ratchett—o verdadeiro Cassetti—foi morto. Mas não por um assassino solitário. Talvez múltiplas pessoas tivessem motivo. Talvez múltiplas pessoas tenham agido. Talvez..."*

Ele pausa, deixando a frase incompleta.

> 🔎 **Sua verdadeira investigação começa aqui:** Quem tinha conexão com o caso Armstrong? Procure nos arquivos criminais por qualquer pessoa que tivesse relação com Cassetti ou com Daisy Armstrong. Cruze nomes. Compare histórias. Procure por aqueles que poderiam estar conectados pelo mesmo motivo de vingança.

---

## 🕵️ Capítulo 7: O Padrão Oculto
Reunidos no vagão-restaurante, Poirot olha para cada um dos suspeitos. *"A verdade"*, diz ele, *"é como um mosaico cujas peças vocês uniram através de suas consultas SQL."*

Agora que você questionou tudo, Poirot revela um detalhe sutil: no arquivo criminal, há vários registros que mencionam "investigação conectada ao caso Armstrong". 

Alguns passageiros têm conexões obscuras:
- Relacionamentos familiares não revelados
- Laços emocionais com a família Armstrong

Não é óbvio. Não é direto. Mas está tudo ali.

> 🧩 **Sua missão final:** 
> - Procure por TODOS os passageiros com registros no arquivo criminal conectados a Armstrong
> - Analise seus depoimentos
> - Trace o movimento de cada um entre 01:11 e 01:20
> - Procure por padrões. Sincronização. Propósito comum.
> - Alguns deles não têm nenhum registro criminal óbvio. Por que não? O que eles estão escondendo?

---

## ⚖️ Capítulo 8: O Veredito Final
*"A justiça,"* diz Poirot, *"é frequentemente mais complexa que o crime."*

O Sr. Ratchett—Cassetti—está morto. Isso é um fato. Como e por quem são questões que apenas a lógica e os dados podem revelar.

Poirot oferece você uma oportunidade: identifique todos aqueles que estavam envolvidos no crime. Cada um deles. Todos que desenharam suas facadas na vingança contra um homem que destruiu suas vidas.

*"Se conseguir nomear cada um deles—realmente cada um—então terá dominado a arte da dedução lógica. A verdade não é um culpado. A verdade é um círculo de mãos."*

> 🎯 **Desafio Final:** Você precisa identificar TODOS os assassinos. Um por um. Cada nome. Cada motivo. Cada gesto de vindita. Se conseguir, terá resolvido o mistério como Hercule Poirot o fez—e merecia ser resolvido.

Se você seguiu as pistas corretamente, descobriu que as peças do banco de dados revelam que não houve apenas um assassino.

> ⚖️ **O veredito final:** Execute a consulta definitiva que une a vítima, a arma, os álibis quebrados e a vingança. Quem deu as facadas?

>💡 Como submeter seu veredito: Para encerrar o caso, você deve consultar a tabela solucao inserindo os nomes de todos os culpados que você encontrou.

>⚠️ Atenção à formatação: Os nomes devem estar em ordem alfabética, separados por vírgula e um espaço.

```SQL
SELECT mensagem FROM solucao WHERE assassino = 'Nome1, Nome2, Nome3, ...';
```

---

<details>
<summary>🔍 <b>Clique aqui para revelar as Queries de Ajuda</b></summary>

## 💡 Dicas para Suas Investigações em SQL

Não deixaremos você completamente perdido. Aqui estão algumas queries que podem ajudar:

### Para explorar os passageiros:
```sql
SELECT nome, profissao, nacionalidade, num_cabine FROM passageiros;
```

### Para encontrar conexões criminais:
```sql
SELECT nome_alvo, crime_cometido, ano_ocorrencia FROM arquivos_criminais WHERE crime_cometido LIKE '%Armstrong%';
```

### Para rastrear movimentação na hora do crime:
```sql
SELECT p.nome, r.local_visto, r.horario_visto, r.detalhe_observado 
FROM passageiros p 
JOIN registro_movimentacao r ON p.id_passaporte = r.id_passaporte 
WHERE r.horario_visto BETWEEN '01:11:00' AND '01:20:00' 
ORDER BY r.horario_visto;
```

### Para checar depoimentos vs realidade:
```sql
SELECT p.nome, d.relato, r.detalhe_observado 
FROM passageiros p 
LEFT JOIN depoimentos d ON p.id_passaporte = d.id_passaporte 
LEFT JOIN registro_movimentacao r ON p.id_passaporte = r.id_passaporte;
```

---
</details>

---

## ❄️ Capítulo Extra: O Dilema de Hercule Poirot

Os motores do Expresso do Oriente continuam silenciosos sob o gelo da Iugoslávia, mas a fumaça das suas células cinzentas já decifrou o enigma. Você confrontou os doze passageiros. Eles não negam o que fizeram. O Sr. Ratchett era Cassetti, um monstro que a lei não conseguiu alcançar, e a justiça foi feita pelas mãos daqueles que ele destruiu.

Agora, os faróis dos veículos da polícia iugoslava começam a piscar ao longe, cortando a nevasca. Eles estão chegando.

Poirot ajeita seu casaco, olha para o círculo de mãos formadas pelos passageiros e depois se vira para você, seu fiel assistente:

> ⚖️ *“Mon ami, a justiça humana exige um culpado atrás das grades. Mas a justiça divina... ah, essa é mais complexa. Temos duas verdades para entregar à polícia. A escolha é nossa.”*

### 📋 As Duas Versões:

1. **A Primeira Solução (O Estranho Intruso):** Um assassino desconhecido, disfarçado com um roupão escarlate, entrou no trem na estação anterior, apunhalou Cassetti na calada da noite e escapou saltando do vagão em meio à nevasca iugoslava. Os passageiros estão inocentes.
2. **A Segunda Solução (A Verdade dos Dados):** O círculo de doze passageiros planejou e executou o veredito de Cassetti juntos. Todos devem ser entregues à justiça e enfrentar o tribunal de Belgrado.

---

> 🧠 **Para Refletir:** Se você estivesse no lugar de Poirot, qual versão contaria para as autoridades? Você protegeria o círculo de mãos que buscou vingança por Daisy Armstrong, ou seguiria a lei rigidamente, entregando todos os doze à polícia?

Se você escolheu proteger o segredo deles e apoiar a decisão histórica de Poirot, execute a query final de arquivamento no seu terminal para encerrar oficialmente o caso:

```sql
-- Caso encerrado. O assassino fugiu pela neve...
SELECT 'O caso está formalmente arquivado. Boa viagem, detetive.' AS veredito_final;