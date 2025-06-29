INSERT INTO Clientes (Nome, Data_nasc, Data_adesao, CPF, Endereco, Numero_tel) VALUES
('Maria Silva', '1985-03-12', '2020-07-14', '12345678901', '11020300', '11987654321'),
('João Souza', '1992-06-25', '2019-05-20', '98765432100', '22030510', '11976543210'),
('Ana Oliveira', '1978-09-18', '2021-11-05', '45612378900', '33040720', '11965432109'),
('Carlos Lima', '1990-04-08', '2018-03-22', '78945612300', '44050930', '11954321678'),
('Beatriz Nunes', '1995-12-30', '2017-09-14', '32165498700', '55060140', '11943216589'),
('Rafael Fernandes', '1983-07-19', '2016-12-01', '98732165400', '66070450', '11932165478'),
('Juliana Costa', '2000-05-10', '2022-08-27', '65478932100', '77080560', '11921065487'),
('Fernando Oliveira', '1993-01-15', '2015-11-30', '74185296300', '88090670', '11987654312'),
('Lucas Pereira', '1987-09-22', '2013-04-21', '36925814700', '99010780', '11965498723'),
('Gabriela Santos', '1998-06-03', '2019-07-11', '25814736900', '10120890', '11954321987'),
('Rodrigo Almeida', '1991-03-30', '2020-01-22', '14736925800', '11230900', '11987654329'),
('Patrícia Melo', '1989-11-25', '2018-10-18', '96385274100', '12341010', '11932165987'),
('Henrique Araújo', '2002-07-07', '2023-02-14', '85274196300', '13451120', '11976549876'),
('Larissa Lima', '1980-12-13', '2012-05-06', '74196385200', '14561230', '11921346598'),
('Camila Rocha', '1997-02-27', '2021-06-19', '36914725800', '15671340', '11965432132');

INSERT INTO Cartao_Membro (ID_Cartao, FK_Cod_Cliente, FK_Nivel) VALUES
('87234951', 1, 4),
('19283746', 2, 2),
('45678932', 3, 3),
('98765421', 4, 1),
('34567891', 5, 4),
('56234198', 6, 3),
('67483921', 7, 2),
('91827364', 8, 1),--
('23456189', 9, 4),
('78329146', 10, 2),
('64578213', 11, 3),
('82937465', 12, 2),
('31789654', 13, 1),
('49238167', 14, 4),
('56473829', 15, 3);

-- Tem que arrumar, não está ocorrendo os updates, mas sim mais inserçoes (seu burro)
UPDATE Clientes SET FK_Cartao = '87234951' WHERE Cod_Cliente = 1;
UPDATE Clientes SET FK_Cartao = '19283746' WHERE Cod_Cliente = 2;
UPDATE Clientes SET FK_Cartao = '45678932' WHERE Cod_Cliente = 3;
UPDATE Clientes SET FK_Cartao = '98765421' WHERE Cod_Cliente = 4;
UPDATE Clientes SET FK_Cartao = '34567891' WHERE Cod_Cliente = 5;
UPDATE Clientes SET FK_Cartao = '56234198' WHERE Cod_Cliente = 6;
UPDATE Clientes SET FK_Cartao = '67483921' WHERE Cod_Cliente = 7;
UPDATE Clientes SET FK_Cartao = '91827364' WHERE Cod_Cliente = 8;
UPDATE Clientes SET FK_Cartao = '23456189' WHERE Cod_Cliente = 9;
UPDATE Clientes SET FK_Cartao = '78329146' WHERE Cod_Cliente = 10;
UPDATE Clientes SET FK_Cartao = '64578213' WHERE Cod_Cliente = 11;
UPDATE Clientes SET FK_Cartao = '82937465' WHERE Cod_Cliente = 12;
UPDATE Clientes SET FK_Cartao = '31789654' WHERE Cod_Cliente = 13;
UPDATE Clientes SET FK_Cartao = '49238167' WHERE Cod_Cliente = 14;
UPDATE Clientes SET FK_Cartao = '56473829' WHERE Cod_Cliente = 15;

INSERT INTO Funcionario (Nome, FK_cargo, CPF, Data_contratacao) VALUES
('Carlos Mendes', 1, '65432178902', '2018-02-10'),
('Fernanda Costa', 3, '32178965403', '2020-08-22'),
('Roberto Lima', 4, '78912345604', '2017-11-15'),
('Luciana Borges', 2, '98765432105', '2019-12-05'),
('Eduardo Souza', 1, '12345678906', '2021-06-18'),
('Patrícia Melo', 3, '85274196307', '2016-05-30'),
('Henrique Araújo', 2, '74196385208', '2022-04-11'),
('Camila Rocha', 4, '36914725809', '2015-08-19');

INSERT INTO Promocoes (Nome_campanha, Periodo_val, Percentual_desc) VALUES
('Super Desconto', '2025-06-01', 0.15),
('Promoção Especial', '2025-07-01', 0.10),
('Queima de Estoque', '2025-08-15', 0.20);

INSERT INTO Produtos (Cod_Barras, FK_Categoria, Nome, Preco, Quant_estoque, FK_Tipo_armazena, FK_Promocao) VALUES
('9876543201123', 1, 'Maçã', 5.99, 100.00, 1, NULL),
('4567891230912', 2, 'Carne bovina', 32.50, 50.00, 1, 1),
('7894561230789', 3, 'Pão francês', 8.00, 200.00, 2, NULL),
('1239874560654', 4, 'Chocolate', 15.00, 80.00, 2, 2),
('9638527410543', 1, 'Banana', 4.50, 120.00, 1, NULL),
('8527419630432', 2, 'Frango', 18.75, 60.00, 1, 1),
('7418529630321', 3, 'Rosquinha', 6.00, 150.00, 2, NULL),
('3692581470219', 4, 'Bolo de cenoura', 25.90, 40.00, 2, 3),
('1472583690111', 1, 'Abacaxi', 7.80, 90.00, 1, NULL),
('2583691470999', 2, 'Costela suína', 29.99, 45.00, 1, 2),
('9871236540888', 3, 'Croissant', 12.50, 110.00, 2, NULL),
('6549873210777', 4, 'Brigadeiro', 3.50, 250.00, 2, NULL),
('3216549870666', 1, 'Uva', 9.00, 85.00, 1, NULL),
('7413698520555', 2, 'Linguiça', 14.75, 70.00, 1, 1),
('9637418520444', 3, 'Torta de limão', 22.90, 55.00, 2, 2);

INSERT INTO Venda (FK_Cod_Cliente, FK_Cod_Barras, Quant_comp, Preco_venda) VALUES
(1, '9876543201123', 2.00, 5.99),  -- Maçã sem promoção
(2, '4567891230912', 1.00, 27.63), -- Carne bovina com 15% de desconto
(3, '7894561230789', 4.00, 8.00),  -- Pão francês sem promoção
(4, '1239874560654', 3.00, 12.00), -- Chocolate com 20% de desconto
(5, '9638527410543', 1.50, 4.50),  -- Banana sem promoção
(6, '8527419630432', 2.50, 15.94), -- Frango com 15% de desconto
(7, '7418529630321', 1.00, 6.00),  -- Rosquinha sem promoção
(8, '3692581470219', 1.50, 19.43), -- Bolo de cenoura com 25% de desconto
(9, '1472583690111', 4.00, 7.80),  -- Abacaxi sem promoção
(10, '2583691470999', 2.00, 23.99), -- Costela suína com 20% de desconto
(11, '9871236540888', 3.00, 12.50), -- Croissant sem promoção
(12, '6549873210777', 6.00, 3.50), -- Brigadeiro sem promoção
(13, '3216549870666', 1.00, 9.00),  -- Uva sem promoção
(14, '7413698520555', 2.50, 12.54), -- Linguiça com 15% de desconto
(15, '9637418520444', 1.00, 18.32), -- Torta de limão com 20% de desconto
(1, '8527419630432', 3.00, 15.94), -- Frango com 15% de desconto
(2, '1239874560654', 1.50, 12.00), -- Chocolate com 20% de desconto
(3, '9876543201123', 5.00, 5.99),  -- Maçã sem promoção
(4, '4567891230912', 2.00, 27.63), -- Carne bovina com 15% de desconto
(5, '7418529630321', 3.50, 6.00),  -- Rosquinha sem promoção
(6, '1472583690111', 2.00, 7.80),  -- Abacaxi sem promoção
(7, '2583691470999', 3.00, 23.99), -- Costela suína com 20% de desconto
(8, '6549873210777', 7.00, 3.50),  -- Brigadeiro sem promoção
(9, '3692581470219', 2.50, 19.43), -- Bolo de cenoura com 25% de desconto
(10, '9638527410543', 4.00, 4.50),  -- Banana sem promoção
(11, '7413698520555', 1.00, 12.54), -- Linguiça com 15% de desconto
(12, '9871236540888', 2.50, 12.50), -- Croissant sem promoção
(13, '9637418520444', 3.00, 18.32), -- Torta de limão com 20% de desconto
(14, '7894561230789', 5.00, 8.00),  -- Pão francês sem promoção
(15, '9876543201123', 3.00, 5.99),  -- Maçã sem promoção
(1, '9638527410543', 2.00, 4.50),  -- Banana sem promoção
(2, '7418529630321', 4.50, 6.00),  -- Rosquinha sem promoção
(3, '1472583690111', 3.00, 7.80),  -- Abacaxi sem promoção
(4, '3692581470219', 1.50, 19.43), -- Bolo de cenoura com 25% de desconto
(5, '2583691470999', 2.50, 23.99), -- Costela suína com 20% de desconto
(6, '9871236540888', 4.00, 12.50), -- Croissant sem promoção
(7, '9637418520444', 3.00, 18.32), -- Torta de limão com 20% de desconto
(8, '4567891230912', 2.50, 27.63), -- Carne bovina com 15% de desconto
(9, '9638527410543', 2.50, 4.50),  -- Banana sem promoção
(10, '9637418520444', 4.00, 18.32), -- Torta de limão com 20% de desconto
(11, '9876543201123', 3.00, 5.99);  -- Maçã sem promoção

INSERT INTO Avaliacao (FK_Cod_Cliente, Nota, Avaliacao, Data_publicacao) VALUES
(1, 5, 'Ótima experiência! O atendimento foi excelente e o produto estava fresco e bem embalado.', '2025-06-10'),
(2, 3, 'O produto chegou dentro do prazo, mas achei que poderia estar mais bem acondicionado. Atendimento razoável.', '2025-06-10'),
(3, 4, 'Gostei muito da qualidade dos itens adquiridos, só acho que o tempo de espera para atendimento poderia ser menor.', '2025-06-10'),
(4, 2, 'Infelizmente tive problemas com o pedido, pois um dos produtos estava com prazo de validade muito curto.', '2025-06-10'),
(5, 5, 'Super recomendo! A equipe foi muito atenciosa e todos os produtos estavam frescos e saborosos.', '2025-06-10'),
(6, 1, 'Experiência decepcionante. Meu pedido veio errado e demoraram muito para resolver o problema.', '2025-06-10'),
(7, 4, 'O atendimento foi ágil e eficiente, mas o produto poderia ter sido melhor embalado.', '2025-06-10'),
(8, 3, 'Achei os preços bons, mas o tempo de entrega foi maior do que o esperado.', '2025-06-10'),
(9, 5, 'Excelente serviço! Tudo estava perfeito, desde o atendimento até a entrega.', '2025-06-10'),
(10, 2, 'O produto veio com embalagem danificada e não obtive suporte adequado para a troca.', '2025-06-10'),
(11, 4, 'Gostei dos produtos e do atendimento. Tudo correu bem, mas poderia haver mais opções de pagamento.', '2025-06-10'),
(12, 5, 'Muito satisfeito! Fui muito bem atendido e recebi tudo em perfeitas condições.', '2025-06-10'),
(13, 3, 'Nada de excepcional, mas também não tive grandes problemas. Atendimento básico.', '2025-06-10'),
(14, 2, 'A entrega atrasou bastante e o suporte não foi tão eficaz na resolução.', '2025-06-10'),
(15, 5, 'Ótima loja! Atendimento prestativo e produtos de excelente qualidade.', '2025-06-10'),
(1, 1, 'Atendimento ruim, produto veio errado e demoraram muito para corrigir.', '2025-06-10'),
(2, 4, 'Gostei da experiência, mas senti falta de mais promoções e descontos.', '2025-06-10'),
(3, 3, 'Produto de qualidade razoável, mas esperava um atendimento mais amigável.', '2025-06-10'),
(4, 5, 'Amei! Tudo perfeito, desde o pedido até a entrega.', '2025-06-10'),
(5, 2, 'Infelizmente tive problemas com um dos produtos, que veio com defeito.', '2025-06-10');

INSERT INTO Fornecedores (CNPJ, Razao_social) VALUES
('12345678000199', 'HortiFruti Brasil Ltda.'),
('98765432000298', 'Carnes Premium S.A.'),
('11223344556677', 'Panificadora Delícia Ltda.'),
('99887766554433', 'Doces & Confeitos LTDA'),
('77665544332211', 'Distribuidora Mercearia Central');

INSERT INTO Lista_fornec (PK_Cod_Barras, FK_Fornecedor) VALUES
('9876543201123', 1),  -- Maçã fornecida por Hortifruti Brasil Ltda.
('4567891230912', 2),  -- Carne bovina fornecida por Carnes Premium S.A.
('7894561230789', 3),  -- Pão francês fornecido por Panificadora Delícia Ltda.
('1239874560654', 4),  -- Chocolate fornecido por Doces & Confeitos LTDA
('9638527410543', 1),  -- Banana fornecida por Hortifruti Brasil Ltda.
('8527419630432', 2),  -- Frango fornecido por Carnes Premium S.A.
('7418529630321', 3),  -- Rosquinha fornecida por Panificadora Delícia Ltda.
('3692581470219', 4),  -- Bolo de cenoura fornecido por Doces & Confeitos LTDA
('1472583690111', 1),  -- Abacaxi fornecido por Hortifruti Brasil Ltda.
('2583691470999', 2),  -- Costela suína fornecida por Carnes Premium S.A.
('9871236540888', 3),  -- Croissant fornecido por Panificadora Delícia Ltda.
('6549873210777', 4),  -- Brigadeiro fornecido por Doces & Confeitos LTDA
('3216549870666', 1),  -- Uva fornecida por Hortifruti Brasil Ltda.
('7413698520555', 2),  -- Linguiça fornecida por Carnes Premium S.A.
('9637418520444', 3);  -- Torta de limão fornecida por Panificadora Delícia Ltda.