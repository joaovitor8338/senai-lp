use locadora;
/*LISTA DE BANCO DE DADOS COM SAKILA TRADUZIDO PARA PORTUGUÊS*/

/*1. Quais os países cadastrados?*/

select * from pais;

/*2. Quantos países estão cadastrados?*/

SELECT COUNT(*) FROM pais;

/*3. Quantos países que terminam com a letra "A" estão cadastrados?*/

SELECT COUNT(*) FROM pais where pais like '%a';

/*4. Listar, sem repetição, os anos que houveram lançamento de filme.*/
select * from filme;
SELECT DISTINCT ano_de_lancamento from filme;

/*5. Alterar o ano de lançamento igual 2007 para filmes que iniciem com a Letra "B".*/

 UPDATE filme SET ano_de_lancamento = 2007 WHERE titulo LIKE 'B%';

/*6. Listar os filmes que possuem duração do filme maior que 100 e classificação igual a "G". */

select * from filme where duracao_do_filme > 100 and classificacao = 'G';

/*7. Alterar o ano de lançamento igual 2008 para filmes que possuem duração da locação menor que 4 e classificação igual a "PG". */

update filme set ano_de_lancamento = 2008 where duracao_da_locacao < 4 and classificacao = 'PG';
update filme set ano_de_lancamento = 2006;
/*8. Listar a quantidade de filmes que estejam classificados como "PG-13" e preço da locação maior que 2.40.*/

select count(*) from filme where classificacao = 'PG' and preco_da_locacao <'2.40';

/*9. Quais os idiomas que possuem filmes cadastrados? */

select * from  idioma where idioma_id  in (select idioma_id from filme);
select titulo, nome from filme
inner join idioma on filme.idioma_id = idioma.idioma_id;
/*10. Alterar o idioma para "GERMAN" dos filmes que possuem preço da locação maior que 4.*/

update filme set
idioma_id = (select idioma_id from idioma where nome = 'german')
where preco_da_locacao > 4;
 

/*11. Alterar o idioma para "JAPANESE" dos filmes que possuem preço da locação igual 0.99.*/

update filme set 
idioma_id = (select idioma_id from idioma where nome = 'Japanese')

/*12. Listar a quantidade de filmes por classificação.*/

select classificacao, count(*) as quantidade_de_filmes from filme group by classificacao;

/*13. Listar, sem repetição, os preços de locação dos filmes cadastrados.*/

select distinct preco_da_locacao from filme;

/*14. Listar a quantidade de filmes por preço da locação.*/

select preco_da_locacao, count(*) as quantidade_de_filme from filme group by preco_da_locacao;

/*15. Listar os precos da locação que possuam mais de 340 filmes.*/

select preco_da_locacao, count(*) as quantidade_de_filmes from filme group by preco_da_locacao having count(*) > 340;

/*16. Listar a quantidade de atores por filme ordenando por quantidade de atores crescente.*/

select titulo, count(*) from filme_ator
inner join filme on filme.filme_id = filme_ator_id
group by titulo
order by 2 asc;

/*17. Listar a quantidade de atores para os filmes que possuem mais de 5 atores ordenando por quantidade de atores decrescente.*/

select f.titulo, count(*)(fa.ator_id);

/*18. Listar o título e a quantidade de atores para os filmes que possuem o idioma "JAPANESE" e mais de 10 atores ordenando por ordem alfabética de título e ordem crescente de quantidade de atores.*/

select titulo, count(*) from filme.f
inner join filme_ator fa on f.filme_id = fa.filme_id
inner join idiomas i on f.idioma_id = i.idioma_id
where i.nome = 'Japanese'
group by titulo
having count(*) > 10
order by titulo asc, count(*) desc;

/*19. Qual a maior duração da locação dentre os filmes?*/

select max(duracao_da_locacao) from filme;

/*20. Quantos filmes possuem a maior duração de locação?*/

select count(*) qt from filme
where duracao_da_locacao in(select max(duracao_da_locacao) from filme);

/*21. Quantos filmes do idioma "JAPANESE" ou "GERMAN" possuem a maior duração de locação?*/

select count(*) qt from filme as f
inner join idioma as i on f.idioma_id = i.idioma_id
where lower(nome) in ('german','japanese')
and duracao_da_locacao = select max(duracao_da_locacao) from filme);



/*22. Qual a quantidade de filmes por classificação e preço da locação?*/

select classificacao, preco_da_locacao, count(*) from filme
group by classificacao , preco_da_locacao
order by classificacao , preco_da_locacao asc;

select count(*) from filme order by classificacao and preco_da_locacao from filme group by preco_da_locacao, classificacao;

/*23. Qual o maior tempo de duração de filme por categoria?*/

select c.categoria_id, c.nome max(f.duracao_do_filme) as duracao from filme as f
inner join filme_categoria as fc on f.filme_id = fc.filme_id
inner join categoria as c on fc.categoria_id = c.categoria_id
group by c.nome;


/*24. Listar a quantidade de filmes por categoria.*/

c

/*25. Listar a quantidade de filmes classificados como "G" por categoria.*/

/*26. Listar a quantidade de filmes classificados como "G" OU "PG" por categoria.*/

/*27. Listar a quantidade de filmes por categoria e classificação.*/

/*28. Qual a quantidade de filmes por Ator ordenando decrescente por quantidade?*/

/*29. Qual a quantidade de filmes por ano de lançamento ordenando por quantidade crescente?*/

/*30. Listar os anos de lançamento que possuem mais de 400 filmes?*/

/*31. Listar os anos de lançamento dos filmes que possuem mais de 100 filmes com preço da locação maior que a média do preço da locação dos filmes da categoria "Children"?*/

/*32. Quais as cidades e seu pais correspondente que pertencem a um país que inicie com a Letra “E”?*/

/*33. Qual a quantidade de cidades por pais em ordem decrescente?*/

/*34. Qual a quantidade de cidades que iniciam com a Letra “A” por pais em ordem crescente?*/

/*35. Quais os países que possuem mais de 3 cidades que iniciam com a Letra “A”?*/

/*36. Quais os países que possuem mais de 3 cidades que iniciam com a Letra “A” ou tenha "R" ordenando por quantidade crescente?*/

/*37. Quais os clientes moram no país “United States”?*/

/*38. Quantos clientes moram no país “Brazil”?*/

/*39. Qual a quantidade de clientes por pais?*/

/*40. Quais países possuem mais de 10 clientes?*/

/*41. Qual a média de duração dos filmes por idioma?*/

/*42. Qual a quantidade de atores que atuaram nos filmes do idioma “English”?*/

/*43. Quais os atores do filme “BLANKET BEVERLY”?*/

/*44. Quais categorias possuem mais de 60 filmes cadastrados?*/

/*45. Quais os filmes alugados (sem repetição) para clientes que moram na “Argentina”?*/

/*46. Qual a quantidade de filmes alugados por Clientes que moram na “Chile”?*/

/*47. Qual a quantidade de filmes alugados por funcionario?*/

/*48. Qual a quantidade de filmes alugados por funcionario para cada categoria?*/

/*49. Quais Filmes possuem preço da Locação maior que a média de preço da locação?*/

/*50. Qual a soma da duração dos Filmes por categoria?*/

/*51. Qual a quantidade de filmes locados mês a mês por ano? */

/*52. Qual o total pago por classificação de filmes alugados no ano de 2006?*/

/*53. Qual a média mensal do valor pago por filmes alugados no ano de 2005?*/

/*54. Qual o total pago por filme alugado no mês de Junho de 2006 por cliente? -----    CORRIGIR  */