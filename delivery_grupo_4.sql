/* CRIAÇÃO DO DATABASE*/

CREATE DATABASE [DELIVERY_GRUPO_4]

GO

USE [DELIVERY_GRUPO_4]

GO

/* CRIAÇÃO DAS TABELAS*/

CREATE TABLE [TBL_PEDIDOS] (
	[ID_PEDIDO] INT IDENTITY(1,1) PRIMARY KEY,
	[DT_PEDIDO] DATETIME NOT NULL,
	[ID_CLIENTE] INT NOT NULL,
	[ID_RESTAURANTE] INT NOT NULL,
	[VALOR_COMPRA] DECIMAL(18,2),
	[DESCONTO] DECIMAL(18,2),
	[VALOR_PAGO] DECIMAL(18,2),
	[ID_FORMA_PAGAMENTO] INT,
	[CANCELAMENTO] VARCHAR(40),
	[STATUS_PEDIDO] VARCHAR(10),
	[ID_ENTREGADOR] INT NOT NULL
)

CREATE TABLE [TBL_FORMAS_PAGAMENTO] (
	[ID_FORMA_PAGAMENTO] INT IDENTITY(1,1) PRIMARY KEY,
	[DESCRICAO] VARCHAR(50) NOT NULL,
	[BANDEIRA] VARCHAR(50)
)
CREATE TABLE [TBL_CLIENTES] (
	[ID_CLIENTE] INT IDENTITY(1,1) PRIMARY KEY,
	[NOME_CLIENTE] VARCHAR(100) NOT NULL,
	[CPF] VARCHAR(14) NOT NULL,
	[DATA_DE_NASCIMENTO] DATE NOT NULL,
	[ENDERECO] VARCHAR(50) NOT NULL,
	[CIDADE] VARCHAR(50) NOT NULL,
	[UF] VARCHAR(2) NOT NULL,
	[TELEFONE] VARCHAR(50) NOT NULL
)

CREATE TABLE [TBL_RESTAURANTES] (
	[ID_RESTAURANTE] INT IDENTITY(1,1) PRIMARY KEY,
	[RAZAO_SOCIAL] VARCHAR(100),
	[CNPJ] VARCHAR(18) NOT NULL,
	[ENDERECO] VARCHAR(50) NOT NULL,
	[CIDADE] VARCHAR(50) NOT NULL,
	[UF] VARCHAR(2) NOT NULL,
	[RESPONSAVEL] VARCHAR(50) NOT NULL,
	[TIPO_CONTRATO] VARCHAR(50),
	[TIPO_COZINHA] VARCHAR(50),
	[TAXA_RESTAURANTE] DECIMAL(18,2),
	[OBSERVACOES] VARCHAR(50)
)

CREATE TABLE [TBL_EXPERIENCIA] (
	[ID_PEDIDO] INT PRIMARY KEY,
	[DT_AVALIACAO] DATE NOT NULL,
	[NOTA_AVALIACAO] INT NOT NULL,
	[TAG_AVALIACAO] VARCHAR(50),
	[COMENTARIO] VARCHAR(100)
)

CREATE TABLE [TBL_ENTREGADORES] (
	[ID_ENTREGADOR] INT IDENTITY(1,1) PRIMARY KEY,
	[REGIAO_ENTREGA] VARCHAR(50),
	[NOME] VARCHAR(50) NOT NULL,
	[DATA_DE_NASCIMENTO] DATE NOT NULL,
	[DATA_ENTRADA_PLATAFORMA] DATE NOT NULL,
	[CPF] VARCHAR(14)NOT NULL,
	[RG] VARCHAR(12) NOT NULL,
	[TELEFONE] VARCHAR(50) NOT NULL
)

/* INSERÇÃO DOS DADOS NA TABELA CLIENTES*/

INSERT INTO TBL_CLIENTES (NOME_CLIENTE, CPF, DATA_DE_NASCIMENTO, ENDERECO, CIDADE, UF, TELEFONE)
VALUES
('João Silva', '111.111.111-11', '1990-01-01', 'Rua A, 123', 'São Paulo', 'SP', '(11) 1111-1111'),
('Maria Santos', '222.222.222-22', '1995-02-02', 'Rua B, 456', 'Campinas', 'SP', '(22) 2222-2222'),
('José Oliveira', '333.333.333-33', '1980-03-03', 'Rua C, 789', 'São Paulo', 'SP', '(33) 3333-3333'),
('Ana Pereira', '444.444.444-44', '1985-04-04', 'Rua D, 012', 'Campinas', 'SP', '(44) 4444-4444'),
('Luiz Souza', '555.555.555-55', '1992-05-05', 'Rua E, 345', 'Osasco', 'SP', '(55) 5555-5555'),
('Fernanda Costa', '666.666.666-66', '1978-06-06', 'Rua F, 678', 'Osasco', 'SP', '(66) 6666-6666'),
('Ricardo Lima', '777.777.777-77', '1987-07-07', 'Rua G, 901', 'Santo André', 'SP', '(77) 7777-7777'),
('Juliana Alves', '888.888.888-88', '1983-08-08', 'Rua H, 234', 'São Bernardo do Campo', 'SP', '(88) 8888-8888'),
('Márcio Santos', '999.999.999-99', '1991-09-09', 'Rua I, 567', 'Mauá', 'SP', '(99) 9999-9999'),
('Carla Fernandes', '123.456.789-10', '1982-10-10', 'Rua J, 890', 'Santos', 'SP', '(10) 1010-1010'),
('André Costa', '234.567.891-01', '1977-11-11', 'Rua K, 234', 'Sorocaba', 'SP', '(11) 1111-1212'),
('Cristina Souza', '345.678.912-02', '1994-12-12', 'Rua L, 567', 'Diadema', 'SP', '(12) 1212-1212'),
('Marcos Oliveira', '456.789.123-03', '1981-01-13', 'Rua M, 890', 'Mogi das Cruzes', 'SP', '(13) 1313-1313'),
('Sandra Almeida', '567.891.234-04', '1986-02-14', 'Rua N, 123', 'Cotia', 'SP', '(14) 1414-1414'),
('Antônio Pereira', '678.912.345-05', '1979-03-15', 'Rua O, 456', 'Itapevi', 'SP', '(15) 1515-1515'),
('Renata Lima', '789.123.456-06', '1993-04-16', 'Rua P, 789', 'Barueri', 'SP', '(16) 1616-1616'),
('Luciano Costa', '891.234.567-07', '1996-05-17', 'Rua Q, 012', 'Barueri', 'SP', '(17) 1717-1717'),
('Amanda Oliveira', '912.345.678-08', '1984-06-18', 'Rua R, 345', 'São Paulo', 'SP', '(18) 1818-1818')

/* INSERÇÃO DOS DADOS NA TABELA RESTAURANTES*/

INSERT INTO TBL_RESTAURANTES (RAZAO_SOCIAL, CNPJ, ENDERECO, CIDADE, UF, RESPONSAVEL, TIPO_CONTRATO, TIPO_COZINHA, TAXA_RESTAURANTE, OBSERVACOES)
VALUES
('Sabores Paulistanos', '12.345.678/0001-00', 'Rua Z, 45', 'São Paulo', 'SP', 'John Doe', 'Full', 'Italian', 10.00, 'Ótimo ambiente e atendimento'),
('Tempero da Vila', '12.345.679/0001-00', 'Rua Y, 1345', 'Campinas', 'SP', 'Jane Smith', 'Marketplace', 'Mexican', 12.00, 'Comida deliciosa e equipe simpática'),
('Delícias do Morumbi', '12.345.698/0001-00', 'Rua X, 545', 'São Bernardo do Campo', 'SP', 'Alice Johnson', 'Delivery', 'Chinese', 15.00, 'Entrega rápida e pratos saborosos'),
('Cantinho da Mooca', '12.345.978/0001-00', 'Rua V, 645', 'Santo André', 'SP', 'Bob Brown', 'Full', 'Japanese', 18.00, 'Sushi incrível e ambiente aconchegante'),
('Sabor do Ipiranga', '12.349.678/0001-00', 'Rua U, 645', 'Osasco', 'SP', 'Charlie Green', 'Marketplace', 'Thai', 20.00, 'Sabores autênticos e bela apresentação'),
('Gourmet Jardins', '12.395.678/0001-00', 'Rua U, 845', 'São José dos Campos', 'SP', 'David Jones', 'Delivery', 'Indian', 22.00, 'Picante e saboroso, altamente recomendado'),
('Pinheiros Delicatessen', '12.945.678/0001-00', 'Rua T, 945', 'Ribeirão Preto', 'SP', 'Eve White', 'Full', 'Greek', 25.00, 'Ambiente encantador e excelente serviço'),
('Tatuapé Bistrô', '19.345.678/0001-00', 'Rua S, 945', 'Sorocaba', 'SP', 'Frank Harris', 'Marketplace', 'French', 28.00, 'Experiência gastronômica refinada, vale o preço'),
('Cozinha da Vovó', '92.345.678/0001-00', 'Rua R, 145', 'Santos', 'SP', 'Grace Clark', 'Delivery', 'American', 30.00, 'Melhores hambúrgueres da cidade, entrega rápida'),
('Itaim Bibi Sabor', '12.345.688/0001-00', 'Rua R, 245', 'Mauá', 'SP', 'Hank Lewis', 'Full', 'Spanish', 32.00, 'Tapas deliciosas e ambiente amigável'),
('Perdizes Gourmet', '12.345.878/0001-00', 'Rua Q, 545', 'São José do Rio Preto', 'SP', 'Ivy Young', 'Marketplace', 'Korean', 35.00, 'Churrasco coreano incrível, ótimo custo-benefício'),
('Higienópolis Sabor', '12.348.678/0001-00', 'Rua P, 345', 'Mogi das Cruzes', 'SP', 'Jack Hall', 'Delivery', 'Vietnamese', 38.00, 'Opções frescas e saudáveis, serviço rápido'),
('Vila Mariana Delícias', '12.385.678/0001-00', 'Rua O, 245', 'Diadema', 'SP', 'Kate Walker', 'Full', 'Brazilian', 40.00, 'Churrasco fantástico e equipe atenciosa'),
('Brooklin Sabor', '12.845.678/0001-00', 'Rua N, 245', 'Carapicuíba', 'SP', 'Leo King', 'Marketplace', 'Argentinian', 42.00, 'Empanadas deliciosas e ambiente aconchegante'),
('Aconchego do Campo Belo', '18.345.678/0001-00', 'Rua M, 145', 'Piracicaba', 'SP', 'Mia Wright', 'Delivery', 'Peruvian', 45.00, 'Ceviche saboroso e entrega rápida'),
('Vila Madalena Bistrô', '82.345.678/0001-00', 'Rua M, 45', 'Bauru', 'SP', 'Noah Turner', 'Full', 'Cuban', 48.00, 'Pratos saborosos e ótimos mojitos'),
('Sabor da Liberdade', '12.345.677/0001-00', 'Rua L, 945', 'Itaquaquecetuba', 'SP', 'Olivia Carter', 'Marketplace', 'Turkish', 50.00, 'Kebabs autênticos e atendimento simpático'),
('Cozinha do Bom Retiro', '12.345.778/0001-00', 'Rua K, 845', 'São Vicente', 'SP', 'Paul Adams', 'Delivery', 'Lebanese', 52.00, 'Falafel delicioso e entrega rápida'),
('Vila Prudente Gourmet', '12.347.678/0001-00', 'Rua J, 245', 'Guarujá', 'SP', 'Quincy Nelson', 'Full', 'Moroccan', 55.00, 'Sabores exóticos e decoração linda'),
('Sabor de Santana', '12.375.678/0001-00', 'Rua I, 145', 'Taubaté', 'SP', 'Rita Hill', 'Marketplace', 'Ethiopian', 58.00, 'Experiência gastronômica única, ótimo para grupos'),
('Delícias do Tucuruvi', '12.745.678/0001-00', 'Rua H, 45', 'Praia Grande', 'SP', 'Sam Scott', 'Delivery', 'Russian', 60.00, 'Pratos substanciosos e serviço rápido'),
('Vila Guilherme Sabor', '17.345.678/0001-00', 'Rua G, 1345', 'Limeira', 'SP', 'Tina Baker', 'Full', 'Polish', 62.00, 'Comida caseira e ambiente amigável'),
('Gourmet da Lapa', '72.345.678/0001-00', 'Rua F, 45', 'Suzano', 'SP', 'Uma Mitchell', 'Marketplace', 'German', 65.00, 'Salsichas deliciosas e ótima seleção de cervejas'),
('Sabor de Pinheiros', '12.345.676/0001-00', 'Rua E, 345', 'Taboão da Serra', 'SP', 'Victor Allen', 'Delivery', 'Austrian', 68.00, 'Schnitzel saboroso e entrega rápida'),
('Jardim Paulista Delícias', '12.345.668/0001-00', 'Rua E, 345', 'Sumaré', 'SP', 'Wendy Simmons', 'Full', 'Swedish', 70.00, 'Ambiente aconchegante e almôndegas deliciosas'),
('Vila Olímpia Sabor', '12.346.678/0001-00', 'Rua D, 145', 'Barueri', 'SP', 'Xander Cooper', 'Marketplace', 'Danish', 72.00, 'Ótimos doces e atendimento simpático'),
('Cozinha do Paraíso', '12.365.678/0001-00', 'Rua C, 245', 'São Carlos', 'SP', 'Yara Phillips', 'Delivery', 'Norwegian', 75.00, 'Frutos do mar frescos e entrega rápida'),
('Vila Formosa Gourmet', '12.645.678/0001-00', 'Rua B, 345', 'Indaiatuba', 'SP', 'Zane Rogers', 'Full', 'Finnish', 78.00, 'Sabores interessantes e ambiente agradável'),
('Sabor de São Miguel', '16.345.678/0001-00', 'Rua A, 145', 'Cotia', 'SP', 'Abby Reed', 'Marketplace', 'Icelandic', 80.00, 'Pratos deliciosos de peixe e ótimo atendimento'),
('Delícias do Jabaquara', '62.345.678/0001-00', 'Rua A, 45', 'Itapevi', 'SP', 'Benjamin Grant', 'Delivery', 'Irish', 82.00, 'Refeições fartas e entrega rápida')

/* INSERÇÃO DOS DADOS NA TABELA ENTREGADORES*/

INSERT INTO TBL_ENTREGADORES (REGIAO_ENTREGA, NOME, DATA_DE_NASCIMENTO, DATA_ENTRADA_PLATAFORMA, CPF, RG, TELEFONE)
VALUES
('São Paulo', 'João Silva', '1990-01-01', '2020-01-01', '111.111.111-11', '11.111.111-1', '1111-1111'),
('Campinas', 'Maria Santos', '1991-02-02', '2020-02-02', '222.222.222-22', '22.222.222-2', '2222-2222'),
('Santos', 'Pedro Oliveira', '1992-03-03', '2020-03-03', '333.333.333-33', '33.333.333-3', '3333-3333'),
('São José dos Campos', 'Ana Souza', '1993-04-04', '2020-04-04', '444.444.444-44', '44.444.444-4', '4444-4444'),
('Sorocaba', 'Lucas Costa', '1994-05-05', '2020-05-05', '555.555.555-55', '55.555.555-5', '5555-5555'),
('Ribeirão Preto', 'Julia Pereira', '1995-06-06', '2020-06-06', '666.666.666-66', '66.666.666-6', '6666-6666'),
('São Bernardo do Campo', 'Gabriel Almeida', '1996-07-07', '2020-07-07', '777.777.777-77', '77.777.777-7', '7777-7777'),
('Guarulhos', 'Laura Lima', '1997-08-08', '2020-08-08', '888.888.888-88', '88.888.888-8', '8888-8888'),
('Osasco', 'Rafael Gomes', '1998-09-09', '2020-09-09', '999.999.999-99', '99.999.999-9', '9999-9999'),
('Santo André', 'Bruna Fernandes', '1999-10-10', '2020-10-10', '123.456.789-01', '12.345.678-9', '1234-5678'),
('São José do Rio Preto', 'Carlos Dias', '2000-11-11', '2020-11-11', '234.567.890-12', '23.456.789-0', '2345-6789'),
('Mauá', 'Fernanda Ribeiro', '2001-12-12', '2020-12-12', '345.678.901-23', '34.567.890-1', '3456-7890'),
('Diadema', 'Eduardo Barros', '2002-01-13', '2021-01-13', '456.789.012-34', '45.678.901-2', '4567-8901'),
('Carapicuíba', 'Camila Pinto', '2003-02-14', '2021-02-14', '567.890.123-45', '56.789.012-3', '5678-9012'),
('Piracicaba', 'Rodrigo Martins', '2004-03-15', '2021-03-15', '678.901.234-56', '67.890.123-4', '6789-0123')

/* INSERÇÃO DOS DADOS NA TABELA EXPERIENCIA*/

INSERT INTO TBL_EXPERIENCIA (ID_PEDIDO, DT_AVALIACAO, NOTA_AVALIACAO, TAG_AVALIACAO, COMENTARIO)
VALUES
(1, '2023-01-01', 5, 'Problema na comida', 'A comida estava ótima, mas a embalagem veio um pouco danificada.'),
(2, '2023-01-02', 4, 'Comida fria', 'A entrega foi pontual, mas a comida chegou fria.'),
(3, '2023-01-03', 3, 'Comida revirada', 'A entrega demorou mais do que o esperado e a comida estava revirada.'),
(4, '2023-01-04', 2, 'Entregador sem educação', 'A entrega atrasou e o entregador não foi muito simpático.'),
(5, '2023-01-05', 1, 'Pedido não entregue', 'A entrega atrasou muito e o pedido não foi entregue.'),
(6, '2023-01-06', 5, 'Problema na comida', 'A comida estava deliciosa, mas faltou um item do pedido.'),
(7, '2023-01-07', 4, 'Comida fria', 'Entrega no prazo, porém a comida chegou fria.'),
(8, '2023-01-01', 3, 'Comida revirada', 'A entrega demorou um pouco e a comida veio revirada.'),
(9, '2023-01-02', 2, 'Entregador sem educação', 'A entrega atrasou e o entregador foi rude.'),
(10, '2023-01-03', 1, 'Pedido não entregue', 'A entrega demorou muito e o pedido nunca chegou.'),
(11, '2023-01-04', 5, 'Problema na comida', 'A comida estava saborosa, mas veio com um ingrediente errado.'),
(12, '2023-01-05', 4, 'Comida fria', 'Entrega no horário, mas a comida chegou fria.'),
(13, '2023-01-06', 3, 'Comida revirada', 'A entrega atrasou um pouco e a comida estava revirada.'),
(14, '2023-01-07', 2, 'Entregador sem educação', 'A entrega demorou e o entregador foi impaciente.'),
(15, '2023-01-07', 1, 'Pedido não entregue', 'A entrega atrasou demais e o pedido não foi entregue.')

/* INSERÇÃO DOS DADOS NA TABELA FORMAS DE PAGAMENTO*/

INSERT INTO TBL_FORMAS_PAGAMENTO(DESCRICAO, BANDEIRA)
VALUES
('Dinheiro', 'PIX' ),
('Debito', 'Mastercard'),
('Debito', 'Visa'),
('VR', 'Sodexo'),
('VR', 'Ticket'),
('VR', 'Ifood Benefícios'),
('Credito', 'Mastercard'),
('Credito', 'Visa')

/* INSERÇÃO DOS DADOS NA TABELA PEDIDOS*/

INSERT INTO TBL_PEDIDOS (DT_PEDIDO, ID_CLIENTE, ID_RESTAURANTE, VALOR_COMPRA, DESCONTO, VALOR_PAGO, ID_FORMA_PAGAMENTO, CANCELAMENTO, STATUS_PEDIDO, ID_ENTREGADOR)
VALUES
('2023-01-01 12:00:00', 1, 1, 100.00, 10.00, 90.00, 1, NULL, 'Entregue', 1),
('2023-01-01 12:15:00', 2, 1, 150.00, 15.00, 135.00, 1, NULL, 'Entregue', 2),
('2023-01-01 12:30:00', 3, 2, 200.00, 20.00, 180.00, 2, NULL, 'Entregue', 3),
('2023-01-01 12:45:00', 4, 2, 250.00, 25.00, 225.00, 2, NULL, 'Entregue', 4),
('2023-01-01 13:00:00', 5, 3, 300.00, 30.00, 270.00, 3, NULL, 'Entregue', 5),
('2023-01-01 13:15:00', 6, 3, 350.00, 35.00, 315.00, 4, NULL, 'Entregue', 6),
('2023-01-01 13:30:00', 7, 4, 400.00, 40.00, 360.00, 5, NULL, 'Entregue', 7),
('2023-01-01 13:45:00', 8, 4, 450.00, 45.00, 405.00, 6, NULL, 'Entregue', 8),
('2023-01-01 14:00:00', 9, 5, 500.00, 50.00, 450.00, 7, NULL, 'Entregue', 9),
('2023-01-01 14:15:00', 10, 5, 550.00, 55.00, 495.00, 8, NULL, 'Entregue', 10),
('2023-01-02 12:00:00', 11, 1, 120.00, 12.00, 108.00, 7, NULL, 'Entregue', 1),
('2023-01-02 12:15:00', 12, 1, 170.00, 17.00, 153.00, 7, NULL, 'Entregue', 2),
('2023-01-02 12:30:00', 13, 2, 220.00, 22.00, 198.00, 6, NULL, 'Entregue', 3),
('2023-01-02 12:45:00', 14, 2, 270.00, 27.00, 243.00, 6, NULL, 'Entregue', 4),
('2023-01-02 13:00:00', 15, 3, 320.00, 32.00, 288.00, 5, NULL, 'Entregue', 5),
('2023-01-02 13:15:00', 16, 3, 370.00, 37.00, 333.00, 4, NULL, 'Entregue', 6),
('2023-01-02 13:30:00', 17, 4, 420.00, 42.00, 378.00, 3, NULL, 'Entregue', 7),
('2023-01-02 13:45:00', 18, 4, 470.00, 47.00, 423.00, 2, NULL, 'Entregue', 8),
('2023-01-02 14:00:00', 19, 5, 520.00, 52.00, 468.00, 1, NULL, 'Entregue', 9),
('2023-01-02 14:15:00', 20, 5, 570.00, 57.00, 513.00, 1, NULL, 'Entregue', 10),
('2023-01-03 12:00:00', 1, 11, 130.00, 13.00, 117.00, 2, 'CLIENTE NÃO ENCONTRADO', 'CANCELADO', 1),
('2023-01-03 12:15:00', 2, 15, 180.00, 18.00, 162.00, 2, NULL, 'Entregue', 2),
('2023-01-03 12:30:00', 3, 12, 230.00, 23.00, 207.00, 3, NULL, 'Entregue', 3),
('2023-01-03 12:45:00', 4, 12, 280.00, 28.00, 252.00, 4, NULL, 'Entregue', 4),
('2023-01-03 13:00:00', 5, 13, 330.00, 33.00, 297.00, 5, NULL, 'Entregue', 5),
('2023-01-03 13:15:00', 6, 13, 380.00, 38.00, 342.00, 5, NULL, 'Entregue', 6),
('2023-01-03 13:30:00', 7, 14, 430.00, 43.00, 387.00, 6, NULL, 'Entregue', 7),
('2023-01-03 13:45:00', 8, 14, 480.00, 48.00, 432.00, 7, NULL, 'Entregue', 8),
('2023-01-03 14:00:00', 9, 15, 530.00, 53.00, 477.00, 8, NULL, 'Entregue', 9),
('2023-01-03 14:15:00', 10, 15, 580.00, 58.00, 522.00, 8, 'CLIENTE NÃO ENCONTRADO', 'CANCELADO', 10),
('2023-01-05 12:00:00', 1, 1, 100.00, 10.00, 90.00, 7, NULL, 'Entregue', 1),
('2023-01-05 12:15:00', 2, 1, 150.00, 15.00, 135.00, 7, NULL, 'Entregue', 2),
('2023-01-05 12:30:00', 3, 2, 200.00, 20.00, 180.00, 6, 'PEDIDO ATRASADO', 'CANCELADO', 3),
('2023-01-05 12:45:00', 4, 2, 250.00, 25.00, 225.00, 5, NULL, 'Entregue', 4),
('2023-01-05 13:00:00', 5, 3, 300.00, 30.00, 270.00, 5, NULL, 'Entregue', 5),
('2023-01-05 13:15:00', 6, 3, 350.00, 35.00, 315.00, 5, NULL, 'Entregue', 6),
('2023-01-05 13:30:00', 7, 4, 400.00, 40.00, 360.00, 4, NULL, 'Entregue', 7),
('2023-01-05 13:45:00', 8, 4, 450.00, 45.00, 405.00, 4, NULL, 'Entregue', 8),
('2023-01-05 14:00:00', 9, 5, 500.00, 50.00, 450.00, 3, NULL, 'Entregue', 9),
('2023-01-05 14:15:00', 10, 5, 550.00, 55.00, 495.00, 2, NULL, 'Entregue', 10),
('2023-01-06 12:00:00', 11, 1, 120.00, 12.00, 108.00, 2, NULL, 'Entregue', 1),
('2023-01-06 12:15:00', 12, 1, 170.00, 17.00, 153.00, 3, NULL, 'Entregue', 2),
('2023-01-06 12:30:00', 13, 2, 220.00, 22.00, 198.00, 4, NULL, 'Entregue', 3),
('2023-01-06 12:45:00', 14, 2, 270.00, 27.00, 243.00, 2, 'PEDIDO ATRASADO', 'CANCELADO', 4),
('2023-01-06 13:00:00', 15, 3, 320.00, 32.00, 288.00, 7, NULL, 'Entregue', 5),
('2023-01-06 13:15:00', 16, 3, 370.00, 37.00, 333.00, 6, NULL, 'Entregue', 6),
('2023-01-06 13:30:00', 17, 4, 420.00, 42.00, 378.00, 5, NULL, 'Entregue', 7),
('2023-01-06 13:45:00', 18, 4, 470.00, 47.00, 423.00, 5, NULL, 'Entregue', 8),
('2023-01-06 14:00:00', 19, 5, 520.00, 52.00, 468.00, 6, NULL, 'Entregue', 9),
('2023-01-06 14:15:00', 10, 5, 570.00, 57.00, 513.00, 7, NULL, 'Entregue', 10),
('2023-01-07 12:00:00', 11, 11, 130.00, 13.00, 117.00, 7, NULL, 'Entregue', 1),
('2023-01-07 12:15:00', 12, 12, 180.00, 18.00, 162.00, 8, NULL, 'Entregue', 2),
('2023-01-07 12:30:00', 13, 12, 230.00, 23.00, 207.00, 1, NULL, 'Entregue', 3),
('2023-01-07 12:45:00', 14, 12, 280.00, 28.00, 252.00, 2, NULL, 'Entregue', 4),
('2023-01-07 13:00:00', 15, 13, 330.00, 33.00, 297.00, 3, NULL, 'Entregue', 5),
('2023-01-07 13:15:00', 16, 13, 380.00, 38.00, 342.00, 4, NULL, 'Entregue', 6),
('2023-01-07 13:30:00', 17, 14, 430.00, 43.00, 387.00, 5, 'RESTAURANTE SEM PRODUTO', 'CANCELADO', 7),
('2023-01-07 13:45:00', 18, 14, 480.00, 48.00, 432.00, 1, NULL, 'Entregue', 8),
('2023-01-07 14:00:00', 19, 15, 530.00, 53.00, 477.00, 1, NULL, 'Entregue', 9),
('2023-01-07 14:15:00', 20, 15, 580.00, 58.00, 522.00, 1, NULL, 'Entregue', 10)
