-- Relatório 1
SELECT 
    e.nome AS 'Nome Empregado',
    e.cpf AS 'CPF Empregado',
    e.dataAdm AS 'Data Admissão',
    e.salario AS 'Salário',
    d.nome AS 'Departamento',
    t.numero AS 'Número de Telefone'
FROM empregado e
LEFT JOIN departamento d 
    ON e.departamento_idDepartamento = d.idDepartamento
LEFT JOIN telefone t 
    ON e.cpf = t.empregado_cpf
WHERE e.dataAdm BETWEEN '2019-01-01' AND '2022-03-31'
ORDER BY e.dataAdm DESC;

-- Relatório 2
SELECT 
    e.nome AS 'Nome Empregado',
    e.cpf AS 'CPF Empregado',
    e.dataAdm AS 'Data Admissão',
    e.salario AS 'Salário',
    d.nome AS 'Departamento',
    t.numero AS 'Número de Telefone'
FROM empregado e
LEFT JOIN departamento d 
    ON e.departamento_idDepartamento = d.idDepartamento
LEFT JOIN telefone t 
    ON e.cpf = t.empregado_cpf
WHERE e.salario < (SELECT AVG(salario) FROM empregado)
ORDER BY e.nome;

-- Relatório 3
SELECT 
    d.nome AS 'Departamento',
    COUNT(e.cpf) AS 'Quantidade de Empregados',
    AVG(e.salario) AS 'Média Salarial',
    AVG(e.comissao) AS 'Média da Comissão'
FROM departamento d
LEFT JOIN empregado e 
    ON d.idDepartamento = e.departamento_idDepartamento
GROUP BY d.nome
ORDER BY d.nome;

-- Relatório 4 
SELECT
    e.nome AS `Nome Empregado`,
    e.cpf AS `CPF Empregado`,
    e.sexo AS `Sexo`,
    e.salario AS `Salário`,
    COUNT(V.idVenda) AS `Quantidade Vendas`,
    COALESCE(SUM(V.valor), 0) AS `Total Valor Vendido`,
    COALESCE(SUM(V.comissao), 0) AS `Total Comissão das Vendas`
FROM Empregado AS e
LEFT JOIN Venda AS v ON e.cpf = v.Empregado_cpf
GROUP BY e.cpf, e.nome, e.sexo, e.salario
ORDER BY `Quantidade Vendas` DESC;

-- Relatório 5
SELECT
    e.nome AS `Nome Empregado`,
    e.cpf AS `CPF Empregado`,
    e.sexo AS `Sexo`,
    e.salario AS `Salário`,
    COUNT(DISTINCT V.idVenda) AS `Quantidade Vendas com Serviço`,
    COALESCE(SUM(ITS.valor), 0) AS `Total Valor Vendido com Serviço`,
    COALESCE(SUM(V.comissao), 0) AS `Total Comissão das Vendas com Serviço`
FROM Empregado AS e
LEFT JOIN Venda AS v ON e.cpf = V.Empregado_cpf
LEFT JOIN itensServico AS ITS ON v.idVenda = ITS.Venda_idVenda
GROUP BY e.cpf, e.nome, e.sexo, e.salario
ORDER BY `Quantidade Vendas com Serviço` DESC;

-- Relatório 6 
SELECT
    P.nome AS `Nome do Pet`,
    V.data AS `Data do Serviço`,
    S.nome AS `Nome do Serviço`,
    ITS.quantidade AS `Quantidade`,
    ITS.valor AS `Valor`,
    E.nome AS `Empregado que realizou o Serviço`
FROM PET AS P
JOIN itensServico AS ITS ON P.idPET = ITS.PET_idPET
JOIN Servico AS S ON ITS.Servico_idServico = S.idServico
JOIN Venda AS V ON ITS.Venda_idVenda = V.idVenda
JOIN Empregado AS E ON V.Empregado_cpf = E.cpf
ORDER BY V.data DESC;

-- Relatório 7 
SELECT
    V.data AS `Data da Venda`,
    V.valor AS `Valor`,
    COALESCE(V.desconto, 0) AS `Desconto`,
    (V.valor - COALESCE(V.desconto, 0)) AS `Valor Final`,
    E.nome AS `Empregado que realizou a venda`,
    C.nome AS `Nome do Cliente`
FROM Venda AS V
JOIN Empregado AS E ON V.Empregado_cpf = E.cpf
LEFT JOIN Cliente AS C ON V.Cliente_cpf = C.cpf
ORDER BY V.data DESC;

-- Relatório 8
SELECT
    S.nome AS `Nome do Serviço`,
    COUNT(ITS.Servico_idServico) AS `Quantidade Vendas`,
    COALESCE(SUM(ITS.valor), 0) AS `Total Valor Vendido`
FROM Servico AS S
LEFT JOIN itensServico AS ITS ON S.idServico = ITS.Servico_idServico
GROUP BY S.nome
ORDER BY `Quantidade Vendas` DESC
LIMIT 10;

-- Relatório 9 
SELECT
    FPV.tipo AS `Tipo Forma Pagamento`,
    COUNT(FPV.idFormaPgVenda) AS `Quantidade Vendas`,
    COALESCE(SUM(FPV.valorPago), 0) AS `Total Valor Vendido`
FROM FormaPgVenda AS FPV
GROUP BY FPV.tipo
ORDER BY `Quantidade Vendas` DESC;

-- Relatório 10
SELECT
    DATE(data) AS `Data Venda`,
    COUNT(idVenda) AS `Quantidade de Vendas`,
    COALESCE(SUM(valor), 0) AS `Valor Total Venda`
FROM Venda
GROUP BY
DATE(data)
ORDER BY `Data Venda` DESC;

-- Relatório 11
SELECT
    P.nome AS `Nome Produto`,
    P.valorVenda AS `Valor Produto`,
    F.nome AS `Nome Fornecedor`,
    F.email AS `Email Fornecedor`,
    T.numero AS `Telefone Fornecedor`
FROM Produtos AS P
LEFT JOIN ItensCompra AS IC ON P.idProduto = IC.Produtos_idProduto
LEFT JOIN Compras AS C ON IC.Compras_idCompra = C.idCompra
LEFT JOIN Fornecedor AS F ON C.Fornecedor_cpf_cnpj = F.cpf_cnpj
LEFT JOIN Telefone AS T ON F.cpf_cnpj = T.Fornecedor_cpf_cnpj
GROUP BY P.nome, P.valorVenda, F.nome, F.email, T.numero
ORDER BY P.nome;

-- Relatório 12
SELECT
    P.nome AS `Nome Produto`,
    COUNT(IVP.Produto_idProduto) AS `Quantidade (Total) Vendas`,
    COALESCE(SUM(IVP.valor * IVP.quantidade), 0) AS `Valor Total Recebido pela Venda do Produto`
FROM Produtos AS P
LEFT JOIN ItensVendaProd AS IVP ON P.idProduto = IVP.Produto_idProduto
GROUP BY P.idProduto, P.nome
ORDER BY `Quantidade (Total) Vendas` DESC;
