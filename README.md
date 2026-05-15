# 🚂 Mistério no Expresso do Oriente: Um Crime em SQL

## 💻 Instruções para Investigação (Setup Técnico)

Para iniciar o mistério no seu ambiente, siga os passos abaixo no terminal do seu **GitHub Codespace**:

1. **Inicie o serviço do banco de dados:**
   ```bash
   sudo service postgresql start

2. **Carregue o esquema e os dados do crime:**
    ```bash
    psql -U postgres -f setup.sql

3. **Acesse o terminal interativo para começar as consultas:**
    ```bash
    psql -U postgres

4. **Dica de detetive:** Use \dt para listar as tabelas disponíveis e \d nome_da_tabela para entender os metadados (colunas) de cada pista.

## 📖 Prólogo: O Embarque na Plataforma de Istambul
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

> 📝 **Sua missão:** Cruze a tabela de depoimentos dos passageiros com a tabela de ocupação de cabines. Quem estava fora do seu lugar ou mentiu sobre onde passou a madrugada à 01:15?

---

## 🫖 Capítulo 3: A Pista da Arma do Crime e as Profissões
Ao revistar o vagão-restaurante, a Sra. Hubbard encontra uma faca de cozinha ensanguentada escondida em sua bolsa de viagem. O médico a bordo confirma: o assassino desferiu doze facadas, mas algumas feridas foram feitas com a mão direita e outras com a mão esquerda. Seria um assassino canhoto? Ou seriam múltiplos assassinos?

Poirot nota um detalhe: a faca usada exige conhecimento em anatomia ou habilidades manuais específicas para desferir golpes tão precisos no escuro.

> 🛠️ **Sua missão:** Investigue o histórico profissional, passaportes e habilidades dos passageiros. Alguns deles têm conexões militares, médicas ou domésticas com a antiga família Armstrong?

---

## 🏁 Epílogo: A Revelação de Poirot
Reunidos no vagão-restaurante, Poirot olha para cada um dos suspeitos. *"A verdade"*, diz ele, *"é como um mosaico cujas peças vocês uniram através de suas consultas SQL."*

Se você seguiu as pistas corretamente, descobriu que o Sr. Ratchett era, na verdade, Cassetti, o sequestrador da pequena Daisy Armstrong. E o mais impressionante: as peças do banco de dados revelam que não houve apenas um assassino.

> ⚖️ **O veredito final:** Execute a consulta definitiva que une a vítima, a arma, os álibis quebrados e a vingança. Quem deu as facadas?
