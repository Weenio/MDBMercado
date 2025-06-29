create database SUPERMERCADO;

use SUPERMERCADO;

/* Lógico_1: */

CREATE TABLE Clientes (
    Cod_Cliente INT PRIMARY KEY auto_increment,
    Nome VARCHAR(50),
    Data_nasc DATE,
    Data_adesao DATE,
    CPF VARCHAR(11),
    Endereco VARCHAR(8),
    Numero_tel VARCHAR(11),
    FK_Cartao CHAR(8) UNIQUE
);

CREATE TABLE Funcionario (
    Matricula INT PRIMARY KEY auto_increment,
    Nome VARCHAR(50),
    FK_cargo INT,
    CPF VARCHAR(11) UNIQUE,
    Data_contratacao DATE
);

CREATE TABLE Cargo (
    ID_cargo INT PRIMARY KEY auto_increment,
    Cargo VARCHAR(25)
);

INSERT INTO Cargo(Cargo) VALUES
("Caixa"),
("Repositor"),
("Almoxarife"),
("Supervisor");

CREATE TABLE Produtos (
    Cod_Barras VARCHAR(13) PRIMARY KEY,
    FK_Categoria INT,
    Nome VARCHAR(30),
    Preco DECIMAL(6,2),
    Quant_estoque DECIMAL(6,2),
    FK_Tipo_armazena INT,
    FK_Promocao INT
);

CREATE TABLE Armazenamentos(
	ID_Armazena INT PRIMARY KEY auto_increment,
    Tipo_armazena CHAR(2)
);

INSERT INTO Armazenamentos(Tipo_armazena) VALUES
('KG'),
('UN'),
('L');

CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY auto_increment,
    Nome_cat VARCHAR(20)
);

INSERT INTO Categoria(Nome_cat) VALUES
("Hortifrúti"),
("Açougue"),
("Padaria"),
("Mercearia");

CREATE TABLE Promocoes (
    ID_Promocao INT PRIMARY KEY auto_increment,
    Nome_campanha VARCHAR(40),
    Periodo_val DATE,
    Percentual_desc DECIMAL(5,2)
);

CREATE TABLE Nivel_membro (
    ID_Nivel INT PRIMARY KEY auto_increment,
    Nome VARCHAR(20)
);

INSERT INTO Nivel_membro (Nome) VALUES
("Não membro"),
("VIP"),
("VIP Gold"),
("VIP Platinum");

CREATE TABLE Venda (
    ID_venda INT PRIMARY KEY auto_increment,
    FK_Cod_Cliente INT,
    FK_Cod_Barras VARCHAR(13),
    Quant_comp DECIMAL(6,2),
    Preco_venda DECIMAL(6,2),
    Data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Avaliacao (
    ID_Avaliacao INT PRIMARY KEY auto_increment,
    FK_Cod_Cliente INT,
    Nota INT,
    Avaliacao VARCHAR(150),
    Data_publicacao DATE
);

CREATE TABLE Fornecedores (
    ID_Fornecedor INT PRIMARY KEY auto_increment,
    CNPJ VARCHAR(14),
    Razao_social VARCHAR(70)
);

CREATE TABLE Cartao_Membro (
    ID_Cartao CHAR(8) PRIMARY KEY,
    FK_Cod_Cliente INT,
    FK_Nivel INT
);

CREATE TABLE Lista_fornec(
    PK_Cod_Barras VARCHAR(13),
    FK_Fornecedor INT,
    PRIMARY KEY (PK_Cod_Barras, FK_Fornecedor)
);
 
ALTER TABLE Clientes ADD CONSTRAINT FK_Clientes_Cartao
    FOREIGN KEY (FK_Cartao)
    REFERENCES Cartao_Membro (ID_Cartao);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_Cargo
    FOREIGN KEY (FK_cargo)
    REFERENCES Cargo (ID_cargo);
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_Promocao
    FOREIGN KEY (FK_Promocao)
    REFERENCES Promocoes (ID_Promocao)
    ON DELETE CASCADE;
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_Categoria
    FOREIGN KEY (FK_Categoria)
    REFERENCES Categoria (ID_Categoria);
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_CodCliente
    FOREIGN KEY (FK_Cod_Cliente)
    REFERENCES Clientes (Cod_Cliente);
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_CodProd
    FOREIGN KEY (FK_Cod_Barras)
    REFERENCES Produtos (Cod_Barras);
 
ALTER TABLE Avaliacao ADD CONSTRAINT FK_Avaliacao_CodCliente
    FOREIGN KEY (FK_Cod_Cliente)
    REFERENCES Clientes (Cod_Cliente);
 
ALTER TABLE Cartao_Membro ADD CONSTRAINT FK_Cartao_Membro_CodCliente
    FOREIGN KEY (FK_Cod_Cliente)
    REFERENCES Clientes (Cod_Cliente);
 
ALTER TABLE Cartao_Membro ADD CONSTRAINT FK_Cartao_Membro_Nivel
    FOREIGN KEY (FK_Nivel)
    REFERENCES Nivel_membro (ID_Nivel);
 
ALTER TABLE Lista_fornec ADD CONSTRAINT FK_Lista_fornec_CodProd
    FOREIGN KEY (PK_Cod_Barras)
    REFERENCES Produtos (Cod_Barras);
 
ALTER TABLE Lista_fornec ADD CONSTRAINT FK_Lista_fornec_CodFornec
    FOREIGN KEY (FK_Fornecedor)
    REFERENCES Fornecedores (ID_Fornecedor);
    
ALTER TABLE Produtos ADD CONSTRAINT FK_Tipo_armazena_ID_Armazena
    FOREIGN KEY (FK_Tipo_armazena)
    REFERENCES Armazenamentos (ID_Armazena);