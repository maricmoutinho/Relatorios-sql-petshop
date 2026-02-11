# Relatorios-sql-petshop

📊 Projeto SQL – Relatórios do Mini‑Mundo PetShop

Este repositório contém a resolução de uma atividade prática de SQL (DQL) baseada no mini‑mundo de um PetShop, utilizando Modelagem Entidade‑Relacionamento (MER), Modelo Relacional (MR) e scripts SQL.

O objetivo principal da atividade é aplicar comandos SELECT com JOIN, agregações e ordenações para gerar 12 relatórios gerenciais, explorando dados reais do contexto de um PetShop.

🗂️ Estrutura do Projeto

O projeto é composto pelos seguintes arquivos:

🛠️ Scripts SQL DDL – Comandos para criação das tabelas do banco de dados do PetShop.

🧪 Scripts SQL DML – Inserção de dados nas tabelas.

📄 Scripts SQL DQL – Consultas SQL responsáveis pela geração dos 12 relatórios solicitados, utilizando JOINs e funções de agregação.

🎯 Objetivo da Atividade

Elaborar 12 relatórios SQL utilizando JOIN, funções de agregação (COUNT, SUM, AVG) e cláusulas como WHERE, GROUP BY, HAVING e ORDER BY, trabalhando diretamente com as tabelas do banco de dados PetShop, sem utilização de Modelo Entidade-Relacionamento (MER).

📑 Relatórios Desenvolvidos
Relatório 1

Lista dos empregados admitidos entre 01/01/2019 e 31/03/2022, contendo:

Nome do Empregado

CPF

Data de Admissão

Salário

Departamento

Telefone
📌 Ordenado por Data de Admissão (decrescente)

Relatório 2

Empregados que ganham menos que a média salarial do PetShop, com os mesmos dados do relatório anterior.
📌 Ordenado por Nome do Empregado

Relatório 3

Departamentos com:

Quantidade total de empregados

Média salarial do departamento

Média de comissão recebida
📌 Ordenado por Nome do Departamento

Relatório 4

Empregados e seus resultados em vendas:

Quantidade total de vendas

Soma do valor total vendido

Soma das comissões recebidas
📌 Ordenado por Quantidade total de vendas

Relatório 5

Empregados que realizaram vendas com serviços, informando:

Quantidade de vendas com serviço

Valor total apurado com serviços

Total de comissões
📌 Ordenado por Quantidade de vendas com serviço

Relatório 6

Serviços realizados para um Pet, contendo:

Nome do Pet

Data do Serviço

Nome do Serviço

Quantidade

Valor

Empregado responsável
📌 Ordenado por Data do serviço (mais recente)

Relatório 7

Vendas realizadas para um Cliente, informando:

Data da Venda

Valor

Desconto

Valor Final

Empregado responsável
📌 Ordenado por Data da venda (mais recente)

Relatório 8

Os 10 serviços mais vendidos, mostrando:

Nome do Serviço

Quantidade de vendas

Valor total vendido
📌 Ordenado por Quantidade de vendas

Relatório 9

Formas de pagamento mais utilizadas nas vendas, contendo:

Tipo da forma de pagamento

Quantidade de vendas

Valor total vendido
📌 Ordenado por Quantidade de vendas

Relatório 10

Balanço diário das vendas:

Data da Venda

Quantidade de vendas

Valor total vendido no dia
📌 Ordenado por Data da venda (mais recente)

Relatório 11

Lista de produtos com seus fornecedores:

Nome do Produto

Valor

Categoria

Nome do Fornecedor

Email

Telefone
📌 Ordenado por Nome do Produto

Relatório 12

Produtos mais vendidos, informando:

Nome do Produto

Quantidade total de vezes que participou em vendas

Valor total arrecadado com o produto
📌 Ordenado por Quantidade de vendas

🧠 Tecnologias Utilizadas

SQL (DQL, DDL e DML)

Banco de Dados Relacional

Conceitos de Modelagem de Dados

✅ Considerações Finais

Este projeto reforça o uso prático de JOINs, agregações e análise de dados em SQL, simulando relatórios reais utilizados em sistemas comerciais.

A atividade contribui para o desenvolvimento do raciocínio lógico, leitura de modelos de dados e construção de consultas SQL mais complexas.

📌 Projeto desenvolvido para fins acadêmicos.
