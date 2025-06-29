/*===========================================================*/
/*=================   TABELAS DE CONSULTA   =================*/
/*===========================================================*/
-- Essas são tabelas que definem valores dentro de outras
-- tabelas

SELECT * FROM armazenamentos;
SELECT * FROM cargo;
SELECT * FROM categoria;
SELECT * FROM nivel_membro;

/*===========================================================*/
/*===============   Pesquisa das Avaliações   ===============*/
/*===========================================================*/

SELECT 
    avaliacao.FK_Cod_Cliente AS "ID da avaliação",
    clientes.nome AS "Nome do Cliente",
    avaliacao.Nota AS "Nota",
    avaliacao.Avaliacao AS "Avaliação",
    avaliacao.Data_publicacao AS "Data de Publicação"
FROM 
    avaliacao
LEFT JOIN 
    clientes ON avaliacao.FK_Cod_Cliente = clientes.Cod_Cliente;

/*============================================================*/
/*=================   Pesquisa dos Cartões   =================*/
/*============================================================*/

SELECT 
    cartao_membro.ID_Cartao AS "Número do Cartão",
    clientes.nome AS "Responsável pelo cartão",
    nivel_membro.Nome AS "Nível do Cartão"
FROM 
    cartao_membro
LEFT JOIN 
    clientes ON cartao_membro.FK_Cod_Cliente = clientes.Cod_Cliente
RIGHT JOIN
    nivel_membro ON cartao_membro.FK_Nivel = nivel_membro.ID_Nivel;

/*===========================================================*/
/*================   Pesquisa dos Clientes   ================*/
/*===========================================================*/

SELECT
	clientes.Cod_Cliente AS "Código do Cliente",
    clientes.Nome AS "Nome Completo",
    clientes.Data_nasc AS "Data de Nascimento",
    clientes.CPF AS "CPF",
    clientes.Endereco AS "Endereço",
    clientes.Numero_tel AS "Número de telefone",
    clientes.Data_adesao AS "Adesão como membro",
    clientes.FK_Cartao AS "Número do Cartão"
FROM
	clientes;

/*===========================================================*/
/*==============   Pesquisa dos Fornecedores   ==============*/
/*===========================================================*/

SELECT
	fornecedores.ID_Fornecedor AS "Código do Fornecedor",
    fornecedores.Razao_social AS "Razão Social",
    fornecedores.CNPJ AS "CNPJ"
FROM
	fornecedores;

/*===========================================================*/
/*==============   Pesquisa dos Funcionarios   ==============*/
/*===========================================================*/

SELECT 
    funcionario.Matricula AS "Número da Matricula",
    funcionario.Nome AS "Nome",
    cargo.Cargo AS "Cargo",
    funcionario.Data_contratacao AS "Data da contratação",
    funcionario.CPF AS "CPF"
FROM 
    funcionario
left JOIN 
    cargo ON funcionario.FK_cargo = cargo.ID_cargo;

/*===========================================================*/
/*================   Pesquisa dos Produtos   ================*/
/*===========================================================*/

SELECT
	produtos.Cod_Barras AS "Código de Barras",
    produtos.Nome AS "Descrição do produto",
    categoria.Nome_cat AS "Categoria",
	produtos.Quant_estoque AS "Quantidade em estoque",
    armazenamentos.Tipo_armazena AS "Armz",
    produtos.Preco AS "Preço do produto",
    COALESCE(promocoes.Percentual_desc, 0) AS "Percentual de desconto",
    COALESCE(promocoes.Nome_campanha, "Sem descontos") AS "Nome da Campanha"
FROM
	produtos
JOIN
	categoria ON produtos.FK_Categoria = categoria.ID_Categoria
JOIN
	armazenamentos ON produtos.FK_Tipo_armazena = armazenamentos.ID_Armazena
LEFT JOIN
	promocoes ON produtos.FK_Promocao = promocoes.ID_Promocao;
    
/*===========================================================*/
/*================   Pesquisa das Pomoções   ================*/
/*===========================================================*/

SELECT
	promocoes.ID_Promocao AS "ID da Promoção",
    promocoes.Nome_campanha AS "Nome da camapanha",
    promocoes.Percentual_desc AS "Porcentagem de desconto",
    promocoes.Periodo_val AS "Periodo de validade"
FROM
	promocoes;

/*============================================================*/
/*==================   Pesquisa de Vendas   ==================*/
/*============================================================*/

SELECT
	venda.ID_venda AS "Código da Venda",
    clientes.Cod_Cliente AS "Código do cliente",
    clientes.Nome AS "Nome do Cliente",
    produtos.Cod_Barras AS "Código de Barras do produto",
    produtos.Nome AS "Nome do produto",
    venda.Quant_comp AS "Quantidade comprada",
    produtos.Preco AS "Preço original",
    venda.Preco_venda AS "Preco_venda",
    venda.Data_venda AS "Data da venda"
FROM
	venda
LEFT JOIN
	clientes ON venda.FK_Cod_Cliente = clientes.Cod_Cliente
LEFT JOIN
	produtos ON venda.FK_Cod_Barras = produtos.Cod_Barras;

/*==========================================================*/
/*=============   Pesquisa dos Fornecimentos   =============*/
/*==========================================================*/

SELECT * FROM lista_fornec;

SELECT
	produtos.Cod_Barras AS "Código de Barras do Produto",
    produtos.Nome AS "Nome do produto",
	categoria.Nome_cat AS "Categoria",
    fornecedores.CNPJ AS "CNPJ",
    fornecedores.Razao_social AS "Razão Social"
FROM
	lista_fornec
LEFT JOIN
	produtos ON lista_fornec.PK_Cod_Barras = produtos.Cod_Barras
LEFT JOIN
	categoria ON produtos.FK_Categoria = categoria.ID_Categoria
LEFT JOIN
	fornecedores ON lista_fornec.FK_Fornecedor = fornecedores.ID_Fornecedor;