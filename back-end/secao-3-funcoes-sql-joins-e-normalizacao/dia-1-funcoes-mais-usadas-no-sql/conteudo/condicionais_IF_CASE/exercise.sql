/*
  EXERCISE 1
  Usando o IF na tabela sakila.film, exiba o id do filme, o título e
  uma coluna extra chamada ‘filme visto?’, em que deve-se avaliar se
  o nome do filme é ‘ACE GOLDFINGER‘. Caso seja, exiba “OK”. Caso
  contrário, exiba “FALTA ASSISTIR”. Não esqueça de usar um alias para
  renomear a coluna da condicional. 
*/
SELECT
	film_id,
  title, 
  IF (title = 'ACE GOLDFINGER', 'OK', 'FALTA ASSISTIR') AS 'filme visto?'
FROM sakila.film
LIMIT 10;

/*
  EXERCISE 2
  Usando o CASE na tabela sakila.film, exiba o título, a classificação 
  indicativa (rating) e uma coluna extra que vamos chamar de 
  ‘grupo-alvo’ em que colocaremos a classificação do filme de acordo
  com as seguintes siglas:

    G: “Livre para todas as idades”;
    PG: “Maiores de 10 anos”;
    PG-13: “Maiores de 13 anos”;
    R: “Maiores de 17 anos”;
    Se não cair em nenhuma das classificações anteriores: “Proibido para menores de idade”.
*/
SELECT
	title,
  rating,
	CASE 
		WHEN rating = 'G' THEN 'Livre para todas as idades'
      WHEN rating = 'PG' THEN 'Maiores de 10 anos'
      WHEN rating = 'PG-13' THEN 'Maiores de 13 anos'
      WHEN rating = 'R' THEN 'Maiores de 17 anos'
      ELSE 'Proibido para menores de idade'
	END AS 'grupo-alvo'
FROM sakila.film
LIMIT 10;