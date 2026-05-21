insert into  cinema(nome, localizacao) values ('Cinemax Brasil', 'São Paulo');
insert into sala(capacidade, id_cinema ) values(120, 1);
insert into filme(nome, sinopse, duracao, data_disponivel, id_genero) values('Diabo veste prada 2', 'Andy Sachs consegue um emprego na famosa revista de moda Runway, auxiliando
 Miranda Priestly, uma editora
 extremamente exigente e respeitada no mundo fashion. 
Mesmo sem interesse pela moda, Andy enfrenta desafios diários
 para se adaptar ao ambiente competitivo, equilibrar sua vida pessoal e descobrir até onde está disposta 
a mudar para alcançar sucesso profissional.', 120);

update filme
set id_genero = 2
where id = 2;

update filme
set data_disponivel = '2026-04-30'
where id = 2;

update filme
set nome = 'Super Mario galaxy'
where id = 3;

update filme
set duracao = 99
where id = 3;

update filme
set sinopse = 'Mario, é transportado para o Reino dos Cogumelos junto de seu irmão Luigi..'
where id = 3;

update filme
set id_genero = '3'
where id = 3;


insert into sessao(id_sala, horario, id_filme, data_sessao) values (1, '14:00:00', 2, '2026-04-30');

insert into genero(nome) values ('comédia');
insert into genero(nome) values ('Animação');

insert into usuario(nome, email, senha) values ('bel','teste@gmail.com', 'dfgjh$%');

insert into pagamento(forma_de_pagamento) values ('Crédito');

insert into ingresso(valor, tipo, assento,  id_pag, id_user) values ( 16.50, 'inteira', 30 , 2,2);

insert into cinema(nome, localizacao) values 
('Movie Planet', 'Recife'),
('Cine Arte', 'Rio de Janeiro'),
('Max Cinema', 'Fortaleza');




insert into sala(capacidade, id_cinema) values
(80, 1),
(150, 5),
(100, 1),
(100, 7),
(200, 6);



insert into genero(nome) values
('Ação'),
('Terror'),
('Ficção Científica'),
('Romance');




insert into filme(nome, sinopse, duracao, data_disponivel, id_genero) values
(
'Interestelar',
'Um grupo de astronautas atravessa um buraco de minhoca em busca de um novo lar para a humanidade.',
169,
'2026-07-10',
10
),

(
'Invocação do Mal',
'Investigadores paranormais enfrentam uma entidade demoníaca em uma casa assombrada.',
112,
'2026-08-02',
9
),

(
'Como Eu Era Antes de Você',
'Uma jovem cria um forte vínculo com um homem tetraplégico.',
110,
'2026-09-15',
11
),

(
'Vingadores: Ultimato',
'Os heróis restantes unem forças para reverter o caos causado por Thanos.',
181,
'2026-10-20',
8
);


insert into sessao(id_sala, horario, id_filme, data_sessao) values
(1, '14:00:00', 2, '2026-04-30'),

(1, '16:30:00', 3, '2026-04-30'),

(14, '18:00:00', 12, '2026-07-10'),

(15, '20:30:00', 13, '2026-08-02'),

(16, '19:00:00', 14, '2026-09-15'),

(17, '21:15:00', 15, '2026-10-20');



insert into usuario(nome, email, senha) values
('Carlos', 'carlos@gmail.com', '123@abc'),
('Amanda', 'amanda@gmail.com', 'senha123'),
('Lucas', 'lucas@gmail.com', 'teste456'),
('Fernanda', 'fernanda@gmail.com', 'abc@789');



insert into pagamento(forma_de_pagamento) values
('Pix'),
('Débito'),
('Dinheiro');




insert into ingresso(valor, tipo, assento, id_pag, id_user) values
(32.00, 'inteira', 12, 3, 3),
(16.00, 'meia', 14, 4, 4),
(40.00, 'vip', 1, 5, 5),
(16.00, 'meia', 22, 2, 3),
(32.00, 'inteira', 45, 3, 4);

update ingresso
set id_filme = 2
where id = 1;

update ingresso
set id_filme = 3
where id = 9;

update ingresso
set id_filme = 12
where id = 3;

update ingresso
set id_filme = 13
where id = 10;

update ingresso
set id_filme = 14
where id = 12;

update ingresso
set id_filme = 14
where id = 11;

update ingresso
set id_filme = 14
where id = 13;



