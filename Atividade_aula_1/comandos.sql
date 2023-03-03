create database pa_producoes;

use pa_producoes;

create table diretores (
	cod_diretor int primary key auto_increment,
    nome varchar(30)
);

create table filmes (
	cod_filme int primary key auto_increment,
    titulo varchar(30) not null,
    cod_diretor int,
    foreign key (cod_diretor) references diretores(cod_diretor)
);

insert into diretores (nome) values ('James Camaron');

insert into filmes (titulo, cod_diretor) values ('O exterminador do futuro', 2);

select * from diretores;

select * from filmes;

select filmes.titulo, diretores.nome from filmes
inner join diretores on filmes.cod_diretor = diretores.cod_diretor
where diretores.nome = 'James Camaron';
