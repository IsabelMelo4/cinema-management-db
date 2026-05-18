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
set sinopse = 'Mario, um encanador do Brooklyn, é transportado para o Reino dos Cogumelos junto de seu irmão Luigi. 
Enquanto Luigi é capturado pelo vilão Bowser, Mario se une à Princesa Peach e outros aliados para salvá-lo e impedir os planos de dominação de 
Bowser. Em sua jornada, ele enfrenta desafios, criaturas perigosas e descobre a importância da coragem e amizade.'
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




