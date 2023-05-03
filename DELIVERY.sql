/* CRIA��O DO DATABASE*/

CREATE DATABASE [DELIVERY]

GO

USE [DELIVERY]

GO

/* CRIA��O DAS TABELAS*/

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