CREATE DATABASE atv_03;
use atv_03;

create table cliente(
	cod_clie numeric(4) primary key,
	nome_clie varchar(20) not null,
	endereco varchar(30),
	cidade varchar(15),
	cep char(8),
	uf char(2),
	cnpj char(16),
	ie char (12)
	);

	select * from cliente;

create table vendedor(
	cod_ven numeric(4) primary key,
	nome_ven varchar(20) not null,
	salario_fixo numeric(10,2),
	comissao char(1)
	);

create table produto(
	cod_prod numeric(4) primary key,
	unidade varchar(3),
	descricao varchar (20),
	val_unit numeric(8,2)
	);

create table pedido(
	 num_pedido numeric(4) primary key,
	 pr_entrega numeric(3) not null,
	 );

create table item_pedido(
	quant numeric(8,2)
	);



--ALTER TABLE
-- Pedido
ALTER TABLE pedido add cod_clie numeric(4);
ALTER TABLE pedido add cod_ven numeric(4);
ALTER TABLE pedido add constraint cod_clie_fk foreign key(cod_clie) references cliente(cod_clie);
ALTER TABLE pedido add constraint cod_ven_fk foreign key(cod_ven) references vendedor(cod_ven);

-- Item_pedido
ALTER TABLE item_pedido add num_pedido numeric(4);
ALTER TABLE item_pedido add cod_prod numeric(4);
ALTER TABLE item_pedido add constraint num_pedido_fk foreign key(num_pedido) references pedido(num_pedido);
ALTER TABLE item_pedido add constraint cod_prod_fk foreign key(cod_prod) references produto(cod_prod);



-- INSERT'S 

--cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(720, 'Ana', 'Rua 17 n.19', 'Niterói', '24358310', 'RJ', '1211323/0001-34', '2134');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(870, 'Flávio', 'Av. Pres. Vargas, 10', 'São Paulo', '22763931', 'SP', '22534126/9387-9', '4631');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj) values(110, 'Jorge', 'Rua Caiapó, 13', 'Curitiba', '30078500', 'PR', '14512764/9834-9');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(222, 'Lúcia', 'Rua Itabira, 123', 'Belo Horizonte', '22124391', 'MG', '283152123/9348-8', '2985');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(830, 'Maurício', 'Av. Paulista, 1236', 'São Paulo', '3012683', 'SP', '32816985/7465-6', '9343');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(130, 'Edmar', 'Rua da Praia s/n', 'Salvador', '30079300', 'BA', '23463284/234-9', '7121');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(410, 'Rodolfo', 'Largo da Lapa, 27', 'Rio de Janeiro', '30078900', 'RJ', '12835128/2346-9', '7431');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(20, 'Beth', 'Av. Climério, 45', 'São Paulo', '25679300', 'SP', '32485126/7326-8', '9280');
insert into cliente(cod_clie, nome_clie, endereco, cidade, uf, cnpj, ie) values(157, 'Paulo', 'Trav. Moraes, casa 3', 'Londrina', 'PR', '32848223/324-2', '1923');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(180, 'Lívio', 'Av. Beira Mar, 1256', 'Florianópolis', '30077500', 'SC', '12736571/2347-4', '1111');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(260, 'Suzana', 'Rua Lopes Mandes, 12', 'Niterói', '30046500', 'RJ', '21763571/232-9', '2530');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(290, 'Renato', 'Rua Meireles, 123', 'São Paulo', '30225900', 'SP', '13276571/1231-4', '1820');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(390, 'Sebastião', 'Rua da Igreja, 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', '9071');
insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie) values(234, 'José', 'Quadra 3, BL.3, sl. 1003', 'Brasília', '22841650', 'DF', '21763576/1232-3', '2931');

-- vendedor
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(209, 'Jose', 1800, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(111, 'Carlos', 2490, 'A');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(11, 'João', 2780, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(240, 'Antônio', 9500, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(720, 'Felipe', 4600,'A');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(213, 'Jonas', 2300, 'A');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(101, 'João', 2650, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(310, 'Josias', 870, 'B');
insert into vendedor(cod_ven, nome_ven, salario_fixo,comissao) values(250, 'Mauricio', 2930, 'B');

-- produto
insert into produto(cod_prod, unidade, descricao, val_unit) values(25,'KG', 'Queijo', 0.97);
insert into produto(cod_prod, unidade, descricao, val_unit) values(31, 'BAR', 'Chocolate', 0.87);
insert into produto(cod_prod, unidade, descricao, val_unit) values(78, 'L', 'Vinho', 2.00);
insert into produto(cod_prod, unidade, descricao, val_unit) values(22, 'M', 'Linho', 0.11);
insert into produto(cod_prod, unidade, descricao, val_unit) values(30, 'SAC', 'Açúcar',0.30);
insert into produto(cod_prod, unidade, descricao, val_unit) values(53, 'M', 'Linha', 1.80);
insert into produto(cod_prod, unidade, descricao, val_unit) values(13, 'G', 'Ouro', 6.18);
insert into produto(cod_prod, unidade, descricao, val_unit) values(45, 'M', 'Madeira', 0.25);
insert into produto(cod_prod, unidade, descricao, val_unit) values(87, 'M', 'Cano', 1.97);
insert into produto(cod_prod, unidade, descricao, val_unit) values(77, 'M', 'Papel', 1.05);

--pedido
insert into pedido(num_pedido,pr_entrega) values(121, 20);
insert into pedido(num_pedido,pr_entrega) values(97, 20);
insert into pedido(num_pedido,pr_entrega) values(101, 15);
insert into pedido(num_pedido,pr_entrega) values(137, 20);  
insert into pedido(num_pedido,pr_entrega) values(148, 20);
insert into pedido(num_pedido,pr_entrega) values(189, 15);
insert into pedido(num_pedido,pr_entrega) values(104, 30);
insert into pedido(num_pedido,pr_entrega) values(203, 30);
insert into pedido(num_pedido,pr_entrega) values(98, 20);
insert into pedido(num_pedido,pr_entrega) values(143, 30);

--selects 1
select * from pedido where num_pedido >= 98 and num_pedido <= 119;
select * from cliente where not uf = 'SP';
select nome_clie, uf from cliente where uf = 'SP' or uf ='RJ';
select cod_clie, nome_clie, uf from cliente where cod_clie >= 200 and uf = 'MG' or uf= 'BA';
select nome_ven, salario_fixo from vendedor where comissao = 'A' OR comissao ='B';
select * from pedido where num_pedido > 100 and num_pedido <= 150 and cod_clie = 260 and cod_ven = 11;

--selects 2
select nome_clie, cnpj from cliente where cod_clie > 500;
select nome_ven, salario_fixo from vendedor where comissao = 'A' or comissao= 'B';
select descricao from produto where not unidade = 'KG';
select * from pedido where cod_clie = 410 and cod_ven = 209;
select * from pedido where pr_entrega = 20 and cod_ven= 101 or cod_ven = 11;
select * from produto where cod_prod = 77 or cod_prod = 53 or cod_prod = 31;
select * from cliente where cod_clie between 200 and 800 and uf= 'SP';
select * from item_pedido where num_pedido = 148;
select * from cliente where cod_clie between 130 and 390 order by cod_clie asc;
select nome_clie from cliente where nome_clie between 'B' and 'R'; 
select nome_clie, uf from cliente where uf= 'SP' or uf= 'MG' or uf = 'RJ';
SELECT descricao,val_unit from produto where unidade = 'BAR' or unidade = 'L' or unidade = 'G';


declare @valor numeric(8, 4); 

--count = conta os elementos (int)
--sum = soma TUDO
--avg = média, só
--max e min = já dá pra saber

select count (*) as 'Quantidade vendedor' from vendedor;
select count (*) as 'Quantidade clientes que não possuem cep' from cliente where cep is null; 
select count (*) as 'Quantidade clientes que possuem cep' from cliente where cep is not null; 
select count (*) as 'Quantidade produtos valor maior que 50' from produto where val_unit > 50;
select sum (salario_fixo) as 'Total salário vendedor' from vendedor;
select sum (val_unit) as 'Total monetário valores produtos' from produto;
select avg (salario_fixo) as 'Média salarial vendedores' from vendedor;
select max (salario_fixo) as 'Maior salário', min (salario_fixo) as 'Menor sálário' from vendedor;

--
select * from vendedor where salario_fixo = 870;
--


--Alter's
alter table vendedor add dt_adm date;
alter table vendedor add dt_demissao date;

--Update's
update vendedor set dt_adm = getdate();
update vendedor set dt_demissao = getdate();
update vendedor set dt_adm = dateadd(dd, -560, getdate());

select count (*) as 'quantos clientes existem' from cliente; -- marilha


-- inner join

select v.nome_ven, p.num_pedido from pedido p inner join vendedor v on v.cod_ven = p.cod_ven order by 2;
select p.num_pedido,v.nome_ven,c.nome_clie from pedido p inner join vendedor v on p.cod_ven = v.cod_ven inner join cliente c on p.cod_clie = c.cod_clie;
select v.nome_ven, c.nome_clie from vendedor v, cliente c;
select p.num_pedido, prod.descricao from 























