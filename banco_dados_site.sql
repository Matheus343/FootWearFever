--create database LojaDeTenis
--use LojaDeTenis

--create database LojaDeTenis

--use LojaDeTenis

CREATE TABLE cadCliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50),
    endereco VARCHAR(100),
    username VARCHAR(20),
    senha VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE cadAdm (
    id_adm INT PRIMARY KEY,
    nome VARCHAR(50),
    senha VARCHAR(20),
    username VARCHAR(20),
	codigo INT
);

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(20)
);

CREATE TABLE marcas (
    id_marca INT PRIMARY KEY,
    nome VARCHAR(20)
);

CREATE TABLE cadProdutos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(50),
    categoria INT,
    valor DECIMAL(10,2),
    marca INT,
    estoque INT,
    FOREIGN KEY (categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (marca) REFERENCES marcas(id_marca)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    id_produto INT,
    id_cliente INT,
    FOREIGN KEY (id_produto) REFERENCES cadProdutos(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES cadCliente(id_cliente)
);

CREATE TABLE ranking (
    id_produto INT,
    total_vendido INT,
    FOREIGN KEY (id_produto) REFERENCES cadProdutos(id_produto)
);

/*
INSERT INTO categorias(id_categoria, nome)
VALUES(2,'Basquete');

INSERT INTO marcas(id_marca, nome)
VALUES(2, 'Adidas');

INSERT INTO cadProdutos (id_produto, nome, categoria, valor, marca, estoque)
VALUES (01,'Jordan AIR', 2, 550.99, 1, 15);


SELECT * FROM categorias
SELECT * FROM marcas
SELECT * FROM cadProdutos
*/