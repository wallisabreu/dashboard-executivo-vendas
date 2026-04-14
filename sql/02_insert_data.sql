insert into categorias (nome_categoria, descricao) values ('eletronicos', 'produtos eletronicos em geral'), ('moveis', 'moveis residenciais e corporativos'), ('acessorios', 'acessorios diversos');

insert into clientes (nome_cliente, email, status) values ('ana souza', 'ana@email.com', 'ATIVO'), ('bruno lima', 'bruno@email.com', 'ATIVO'), ('carla mendes', 'carla@email.com', 'ATIVO'), ('daniel rocha', 'daniel@email.com', 'INATIVO'), ('eduardo silva', 'eduardo@email.com', 'ATIVO');

insert into produtos (nome_produto, preco, status, id_categoria) values ('notebook dell', 3500.00, 'ATIVO', 1), ('smartphone samsung', 2200.00, 'ATIVO', 1), ('cadeira gamer', 1200.00, 'ATIVO', 2), ('mesa escritorio', 800.00, 'ATIVO', 2), ('mouse gamer', 150.00, 'ATIVO', 3), ('teclado mecanico', 300.00, 'ATIVO', 3);

insert into vendas (data_venda, status, id_cliente) values ('2024-09-10', 'PAGO', 1), ('2024-10-05', 'PAGO', 2), ('2024-10-20', 'PAGO', 3), ('2024-11-02', 'PENDENTE', 1), ('2024-11-15', 'CANCELADO', 5);

insert into itens_venda (quantidade, valor_unitario, id_venda, id_produto) values (1, 3500.00, 1, 1), (2, 150.00, 1, 5), (1, 2200.00, 2, 2), (1, 300.00, 2, 6), (1, 1200.00, 3, 3), (1, 800.00, 4, 4), (2, 150.00, 4, 5), (1, 2200.00, 5, 2);
