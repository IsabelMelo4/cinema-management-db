
create table cinema(

id serial primary key,
nome varchar(200),
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