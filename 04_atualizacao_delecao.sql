-- --- COMANDOS DE ATUALIZAÇÃO (UPDATE) ---

-- 1. Aumentar o preço do Corte Feminino para R$ 90,00
UPDATE servico SET preco = 90.00 WHERE id_servico = 1;

-- 2. Corrigir o telefone da cliente Ana Souza
UPDATE cliente SET telefone = '1190000-0000' WHERE id_cliente = 1;

-- 3. Mudar o status de um agendamento para "Concluido"
UPDATE agendamento SET status = 'Concluido' WHERE id_agendamento = 1;


-- --- COMANDOS DE DELEÇÃO (DELETE) ---

-- 1. Apagar um agendamento que foi cancelado (Limpeza)
DELETE FROM agendamento WHERE status = 'Cancelado';

-- 2. Apagar um serviço que não é mais oferecido (Ex: Barba e Corte)
-- Nota: Isso só funciona se não houver agendamentos ligados a ele, ou se configurarmos CASCADE.
DELETE FROM servico WHERE nome_servico = 'Barba e Corte' AND id_servico NOT IN (SELECT id_servico FROM agendamento);

-- 3. Apagar um cliente teste que foi criado errado (pelo ID)
DELETE FROM cliente WHERE id_cliente = 99; -- Exemplo seguro (provavelmente não existe ID 99)