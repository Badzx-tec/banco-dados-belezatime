-- 1. Listagem simples de todos os clientes
SELECT * FROM cliente;

-- 2. Consultar agendamentos filtrando apenas os "Agendados" (WHERE)
SELECT * FROM agendamento WHERE status = 'Agendado';

-- 3. Relatório Completo: Quem agendou o que, com quem e quando? (JOIN)
SELECT 
    c.nome AS Nome_Cliente,
    s.nome_servico AS Servico,
    p.nome AS Profissional,
    a.data_agendamento,
    a.hora_agendamento,
    a.status
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN servico s ON a.id_servico = s.id_servico
JOIN profissional p ON a.id_profissional = p.id_profissional
ORDER BY a.data_agendamento;

-- 4. Ver quanto cada serviço custa, ordenado do mais caro para o mais barato (ORDER BY)
SELECT nome_servico, preco FROM servico ORDER BY preco DESC;