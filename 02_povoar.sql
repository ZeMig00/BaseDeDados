USE agencia;

-- Desabilitar verificações de segurança 
SET sql_safe_updates=0;

-- Remover todos os dados existentes das tabelas (opcional)
DELETE FROM Administrador;
DELETE FROM Cliente;
DELETE FROM Detetive;
DELETE FROM Caso;
DELETE FROM Suspeito;
DELETE FROM Detetive_Caso;
DELETE FROM Evidencia;

-- Popular a tabela Administrador
INSERT INTO Administrador (idAdmin, email, password, nome)
VALUES
  (1, 'joaoSilva@gmail.com', 'joao', 'João da Silva'),
  (2, 'tiagoP22@hotmail.com', 'tiagoP22', 'Tiago Miguel Pereira'),
  (3, 'anad20@gmail.com', 'ana20', 'Ana Maria da Costa');

-- Popular a tabela Caso
INSERT INTO Caso 
(idCaso, titulo, data_a, data_f, descricao, observacoes, status, especialidade, idAdmin)
VALUES
  (1, 'Assalto à mão armada', '2024-05-24', '2024-05-30', 'Sujeito vestia t-shirt preta e máscara. Vítimas: caixa e cliente', 'Dinheiro roubado: R$ 500,00.', 'Em andamento', 'Roubos', 1),
  (2, 'Roubo de carro', '2024-05-23', '2024-05-25', 'Carro roubado de estacionamento', 'Placa: ABC-1234', 'Em andamento', 'Investigação Criminal', 2),
  (3, 'Tráfico de drogas', '2024-05-22', '2024-05-29', 'Operação policial apreende drogas e prende traficante', 'Drogas: cocaína, maconha.', 'Concluído', 'Narcóticos', 1),
  (4, 'Homicídio', '2024-05-21', '2024-05-23', 'Corpo encontrado em parque. Local: Parque Municipal.', 'Vítima: homem de 40 anos. Causa da morte: tiro no peito.', 'Em andamento', 'Homicídios', 1),
  (5, 'Estupro', '2024-05-20', '2024-05-23', 'Mulher estuprada em sua casa', 'Vítima: mulher de 25 anos. Suspeito: desconhecido.', 'Em andamento', 'Crimes Sexuais', 3),
  (6, 'Fraude', '2024-05-19', '2024-05-27', 'Empresa vítima de fraude', 'Quantia: R$ 10.000,00. Método: esquema de phishing.', 'Em andamento', 'Fraudes', 2);

-- Popular a tabela Cliente
INSERT INTO Cliente (id_Cliente, password, nome, idade, email, telefone, idAdmin)
VALUES
  (1, 'senha123', 'João Costa', 30, 'joaocosta@gmail.com', '912345678', 1),
  (2, 'senha456', 'Maria Oliveira', 25, 'mariaoliveira@hotmail.com', '927654321', 2),
  (3, 'senha789', 'Pedro Souza', 40, 'pedrosouza@gmail.com', '938475621', 3),
  (4, 'senha10', 'Ana Costa', 22, 'anacosta@outlook.com', '965432178', 1),
  (5, 'senha11', 'Paulo Ferreira', 35, 'pauloferreira@gmail.com', '966784321', 2),
  (6, 'senha12', 'Clara Santos', 28, 'clarasantos@hotmail.com', '917653210', 3),
  (7, 'senha13', 'Bruno Lopes', 42, 'brunolopes@gmail.com', '938576432', 1),
  (8, 'senha14', 'Daniela Almeida', 33, 'danielaalmeida@outlook.com', '929485761', 2),
  (9, 'senha15', 'Ricardo Silva', 26, 'ricardosilva@gmail.com', '910392857', 3);

-- Popular a tabela Detetive
INSERT INTO Detetive (id_detetive, data_reg, nome, password, idade, telefone, email, morada, especialidade, horario, idAdmin)
VALUES
  (1, '2020-05-26', 'José Gomes', '123456', 40, '1234567890', 'joseGomes@detetive.com', 'Famalicao, Braga', 'Detecção de crimes', 'Segunda-feira a Sexta-feira, das 9h às 18h', 1),
  (2, '2018-05-23', 'Helder Pereira', '654321', 28, '9876543210', 'helder@detetive.com', 'Gualtar, Braga', 'Investigação criminal', 'Terça-feira e Quinta-feira, das 10h às 14h', 1),
  (3, '2021-05-16', 'Marta Temido', '12345678', 30, '123456789012', 'marta@detetive.com', 'Vila Verde, Braga', 'Investigação de crimes', 'Quarta-feira e Sexta-feira, das 14h às 18h', 1),
  (4, '2018-01-06', 'Jessica Ferreira', '87654321', 35, '987654321012', 'jessica@detetive.com', 'Vieira do Minho, Braga', 'Investigação de crimes', 'Segunda-feira, Quarta-feira e Sexta-feira, das 10h às 14h', 2),
  (5, '2020-07-21', 'Pedro Veloso', '1234567890', 45, '1234567890123', 'pedro@detetive.com', 'Cabeçeiras de Basto, Braga', 'Direito penal', 'Terça-feira e Quinta-feira, das 14h às 18h', 2),
  (6, '2021-01-26', 'Sara Dias', '9210123', 50, '98765432101234', 'sara@detetive.com', 'Vila Verde, Braga', 'Direito criminal', 'Segunda-feira a Sexta-feira, das 9h às 18h', 3);

-- Popular a tabela Suspeito
INSERT INTO Suspeito (id_suspeito, nome, idade, telefone, nif)
VALUES
  (1, 'João da Silva', 30, '919365678', '123226749'),
  (2, 'Maria Oliveira', 25, '927654321', '947651321'),
  (3, 'Pedro Pereira', 40, '938475621', '876543210'),
  (4, 'Ana Dias', 22, '965432178', '765412109'),
  (5, 'Paulo Costa', 35, '916784321', '656321098'),
  (6, 'Clara Santos', 28, '927653210', '543250987'),
  (7, 'Bruno Lopes', 42, '938576432', '432103876'),
  (8, 'Daniela Almeida', 33, '929485761', '321098765'),
  (9, 'Ricardo Silva', 26, '910392857', '210987654'),
  (10, 'Ana Sousa', 18, '921234567', '109876543');

-- Popular a tabela Evidencia
INSERT INTO Evidencia (id_Evidencia, descricao, tipo, notas, data, localizacao, id_caso, id_suspeito)
VALUES
  (1, 'Foto do local do crime', 'Foto', 'Foto do local do crime.', '2024-05-24', 'Rua da República, 123', 1, 5),
  (2, 'Arma utilizada no crime', 'Objeto', 'Arma de fogo.', '2024-05-24', 'Agencia da Polícia', 4, 9),
  (3, 'Impressões digitais da arma', 'Evidência física', 'Impressões digitais do suspeito.', '2024-05-24', 'Laboratório de Criminalística', 4, 9),
  (4, 'Depoimento da vítima', 'Testemunho', 'Depoimento da vítima sobre o crime.', '2024-05-24', 'Delegacia de Polícia', 1, 1),
  (5, 'Câmeras de segurança', 'Vídeo', 'Imagens das câmeras de segurança do local do crime.', '2024-05-24', 'Delegacia de Polícia', 2, 8),
  (6, 'Registro de ligação', 'Dados eletrônicos', 'Registro de ligação telefônica entre o suspeito e a vítima.', '2024-05-24', 'Delegacia de Polícia', 6, 3),
  (7, 'Mensagem de texto', 'Dados eletrônicos', 'Mensagem de texto enviada pelo suspeito para a vítima.', '2024-05-24', 'Delegacia de Polícia', 5, 5),
  (8, 'Localização do celular do suspeito', 'Dados eletrônicos', 'Localização do celular do suspeito no momento do crime.', '2024-05-24', 'Delegacia de Polícia', 5, 5);
