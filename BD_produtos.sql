--SELECT * FROM cadProdutos
--SELECT * FROM marcas

--========================= PRODUTO ===================================--

create procedure spCriaProduto
(
	@id_produto INT,
	@nome VARCHAR(20),
	@valor decimal(10,2),
	@marca INT,
	@categoria INT,
	@estoque INT
)
as
begin
	insert into cadProdutos
	(id_produto, nome, valor, marca, categoria, estoque)
	values
	(@id_produto, @nome, @valor, @marca, @categoria, @estoque)
end
GO

create procedure spEditaProduto
(
	@id_produto INT,
	@nome VARCHAR(20),
	@valor decimal(10,2),
	@marca INT,
	@categoria INT,
	@estoque INT
)
as
begin
	update cadProdutos set
				nome = @nome,
				valor = @valor,
				marca = @marca,
				categoria = @categoria,
				estoque = @estoque
				where id_produto = @id_produto
end
GO

create procedure spDeletaProduto
(
	@id_produto INT
)
as
begin
	delete cadProdutos where id_produto = @id_produto
end
GO

create procedure spConsultaProduto
(
	@id_produto INT
)
as
begin
	select * from cadProdutos where id_produto = @id_produto
end
GO

create procedure spListagemProdutos
as
begin
	select * from cadProdutos
end
GO

create procedure spProximoId
(@tabela varchar(max))
as
begin
	exec('select isnull(max(id) +1, 1) as MAIOR from ' + @tabela)
end
GO


--============================ MARCA ====================================--
create procedure spCriaMarca
(
	@id_marca INT,
	@nome VARCHAR(20)
)
as
begin
	insert into marcas
	(id_marca, nome)
	values
	(@id_marca, @nome)
end
GO

create procedure spEditaMarca
(
	@id_marca INT,
	@nome VARCHAR(20)
)
as
begin
	update marcas set
				nome = @nome
				where id_marca = @id_marca
end
GO


create procedure spDeletaMarca
(
	@id_marca INT
)
as
begin
	delete marcas where id_marca = @id_marca
end
GO

create procedure spConsultaMarca
(
	@id_marca INT
)
as
begin
	select * from marcas where id_marca = @id_marca
end
GO

create procedure spListagemMarcas
as
begin
	select * from marcas
end
GO


--========================== CATEGORIA ==================================--

create procedure spCriaCategoria
(
	@id_categoria INT,
	@nome VARCHAR(20)
)
as
begin
	insert into categorias
	(id_categoria, nome)
	values
	(@id_categoria, @nome)
end
GO

create procedure spEditaCategoria
(
	@id_categoria INT,
	@nome VARCHAR(20)
)
as
begin
	update categorias set
				nome = @nome
				where id_categoria = @id_categoria
end
GO


create procedure spDeletaCategoria
(
	@id_categoria INT
)
as
begin
	delete categorias where id_categoria = @id_categoria
end
GO

create procedure spConsultaCategoria
(
	@id_categoria INT
)
as
begin
	select * from categorias where id_categoria = @id_categoria
end
GO

create procedure spListagemCategorias
as
begin
	select * from categorias
end
GO
