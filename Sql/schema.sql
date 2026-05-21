
create table cinema(

id serial primary key,
nome varchar NOT NULL (200),
localizacao varchar (200)

);

create table sala(

id serial primary key,
capacidade int,
id_cinema int,
foreign key (id_cinema) references cinema(id)

);


create table sessao(

id serial primary key,
horario time,
data_sessao date 


);

create table genero(
id serial primary key,
nome varchar(100)

);


create table filme(
id serial primary key,
id_sessao int,
duracao int,
id_genero int,
sinopse varchar(400),
nome varchar(100),
data_disponivel date,
foreign key(id_sessao) references sessao(id),
foreign key(id_genero) references genero(id)
);

create table pagamento(

id serial primary key,
forma_de_pagamento varchar(100)

);

create table usuario(
id serial primary key,
nome varchar(100),
email varchar(200),
senha varchar(20)

); 	


create table ingresso(
id serial primary key,
assento int,
tipo varchar(100),
valor decimal(10,2),
id_pag int,
id_user int,
foreign key(id_pag) references pagamento (id),
foreign key(id_user) references usuario(id)
);


-- fiz algumas alterações

/*ALTER TABLE sessao
ADD COLUMN id_sala int;

ALTER TABLE sessao
ADD CONSTRAINT fk_sessao_sala
FOREIGN KEY(id_sala)
REFERENCES sala(id);

*/


ALTER TABLE usuario
ALTER COLUMN nome SET NOT NULL,
ALTER COLUMN email SET NOT NULL,
ALTER COLUMN senha SET NOT NULL;

alter table pagamento
alter column forma_de_pagamento set not null;

alter table filme 
alter column nome set not null,
alter column duracao set not null,
alter column sinopse set not null;

alter table ingresso
alter column assento set not null,
alter column tipo set not null,
alter column valor set not null;

alter table cinema 
alter column nome set not null;

alter table sessao
alter column data_sessao set not null,
alter column horario set not null;

alter table genero 
alter column nome set not null;

alter table sala 
alter column capacidade set not null;

ALTER TABLE ingresso 
ADD id_filme INT;

ALTER TABLE ingresso
ADD CONSTRAINT fk_id_filme
FOREIGN KEY (id_filme) REFERENCES filme(id);

alter table ingresso 
alter column id_filme set not null;