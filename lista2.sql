-- e-commerce e Gestão de Inventário

-- Exercício 1: Escreva uma consulta SQL que recupere todos os pedidos juntamente com o nome e o email dos clientes que fizeram esses pedidos. Utilize INNER JOIN para combinar as tabelas de pedidos e clientes.

SELECT p.pedido_id, c.nome, c.email
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id;


-- (CRM)

-- exercício 2: Desenvolva uma consulta que liste todas as campanhas e os clientes que participaram delas. Utilize INNER JOIN para combinar as tabelas de campanhas e participações de campanha.

SELECT camp.campanha_id, camp.nome AS campanha_nome, c.nome AS cliente_nome
FROM campanhas camp
INNER JOIN participacoes_campanha pc ON camp.campanha_id = pc.campanha_id
INNER JOIN clientes c ON pc.cliente_id = c.cliente_id;

-- finanças e controle orçamentário

-- exrcício 3: Crie uma consulta para listar todas as transações com a categoria do orçamento associada, se houver. Utilize LEFT JOIN para incluir todas as transações.

SELECT t.transacao_id, t.tipo AS tipo_transacao, t.valor, t.descricao, o.categoria
FROM transacoes t
LEFT JOIN orcamentos o ON t.orcamento_id = o.orcamento_id;

--  Saúde e Gestão de Prontuários Eletrônicos

-- Exercício 4: Crie uma consulta para exibir todos os pacientes e os prontuários relacionados, incluindo pacientes sem prontuários. Utilize LEFT JOIN entre as tabelas de pacientes e prontuários.

SELECT p.nome AS paciente_nome, pr.prontuario_id, pr.data_consulta, pr.medico, pr.diagnostico, pr.prescricao, pr.observacoes
FROM pacientes p
LEFT JOIN prontuarios pr ON p.paciente_id = pr.paciente_id;

--  logística

-- exercício 5: Crie uma consulta para exibir todos os fornecedores e os produtos fornecidos por eles, incluindo fornecedores que não forneceram produtos. Utilize LEFT JOIN entre as tabelas de fornecedores e produtos.

SELECT f.nome AS fornecedor_nome, p.nome AS produto_nome
FROM fornecedores f
LEFT JOIN produtos p ON f.fornecedor_id = p.fornecedor_id;
