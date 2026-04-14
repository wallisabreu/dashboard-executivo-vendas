create table categorias (
id_categoria serial primary key,
 nome_categoria varchar (100) not null,
 descricao text
);

create table clientes (
id_cliente serial primary key,
 nome_cliente varchar (100) not null,
 email varchar (150) unique,
 data_cadastro date not null default current_date,
 status varchar (10) not null check (status in ('ATIVO', 'INATIVO'))
);

create table produtos (
id_produto serial primary key,
 nome_produto varchar (100) not null,
 preco numeric (10,2) not null check (preco > 0),
 status varchar (10) not null check (status in ('ATIVO', 'INATIVO')),
 id_categoria int not null,
 foreign key (id_categoria) references categorias (id_categoria) 
);

create table vendas (
id_venda serial primary key,
 data_venda date not null check (data_venda <= current_date),
 status varchar (15) not null check (status in ('PENDENTE', 'PAGO', 'CANCELADO')),
 id_cliente int not null,
 foreign key (id_cliente) references clientes (id_cliente) 
);

create table itens_venda (
id_item serial primary key,
 quantidade int not null check (quantidade > 0),
 valor_unitario numeric(10,2) not null check (valor_unitario > 0),
 id_venda int not null,
 id_produto int not null,
 foreign key (id_venda) references vendas(id_venda),
 foreign key (id_produto) references produtos(id_produto) 
);
