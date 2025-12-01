-- Inserindo Clientes
INSERT INTO cliente (nome, telefone, email) VALUES 
('Ana Souza', '1199999-1111', 'ana@email.com'),
('Bruno Lima', '1198888-2222', 'bruno@email.com'),
('Carla Dias', '1197777-3333', 'carla@email.com');

-- Inserindo Profissionais
INSERT INTO profissional (nome, especialidade) VALUES 
('João Tesoura', 'Cabeleireiro'),
('Maria Esmalte', 'Manicure'),
('Pedro Navalha', 'Barbeiro');

-- Inserindo Serviços
INSERT INTO servico (nome_servico, preco) VALUES 
('Corte Feminino', 80.00),
('Manicure Simples', 40.00),
('Barba e Corte', 60.00);

-- Inserindo Agendamentos (Simulando uma agenda cheia)
INSERT INTO agendamento (data_agendamento, hora_agendamento, status, id_cliente, id_profissional, id_servico) VALUES 
('2023-12-01', '14:00:00', 'Agendado', 1, 1, 1), -- Ana corta cabelo com João
('2023-12-01', '15:00:00', 'Concluido', 2, 3, 3), -- Bruno faz barba com Pedro
('2023-12-02', '10:00:00', 'Agendado', 3, 2, 2), -- Carla faz unha com Maria
('2023-12-03', '09:00:00', 'Cancelado', 1, 2, 2); -- Ana cancelou unha com Maria