--1) tabelas
create table clientes (codigo int, nome char(30) not null, endereco char(30), cidade char(30), cep char(8), uf char(2), primary key (codigo));

create table produtos (codigo int, descricao char(30) not null unique, unidade char(10), valor_unitario decimal(10,2), primary key (codigo));

create table vendedores (codigo int, nome char(30) not null, taxa_comissao decimal(4,2) not null, salario decimal(10,2) not null, primary key (codigo));

create table pedidos (numero int, prazo_entrega int not null, cod_cliente int not null, cod_vendedor int not null, primary key (numero), foreign key (cod_cliente) references clientes, foreign key (cod_vendedor) references vendedores);

create table itens_pedido (num_pedido int, cod_produto int, quantidade decimal(10,2) not null, primary key (num_pedido, cod_produto), foreign key (num_pedido) references pedidos, foreign key (cod_produto) references produtos);
