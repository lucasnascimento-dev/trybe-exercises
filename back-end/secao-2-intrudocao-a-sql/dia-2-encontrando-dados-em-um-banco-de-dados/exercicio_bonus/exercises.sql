/*
  1. Escreva uma query para exibir a peça e o preço de tudo que é provido pela empresa RBT.
  2. Escreva uma query para exibir todas as informações das cinco peças com os maiores preços.
  3. Escreva uma query para exibir o nome das empresas e o preço das quatro peças com os maiores preços, começando a lista a partir do 3º item.
  4. Escreva uma query para exibir todas as informações das peças que são providas pela empresa HAL. Ordene o resultado pelos preços das peças de forma decrescente.
  5. Escreva uma query para exibir por quantas empresas a peça 1 é provida.
*/
# Exercise 1
SELECT Piece, Price FROM Provides
WHERE Provider = 'RBT';

# Exercise 2
SELECT * FROM PiecesProviders.Provides 
ORDER BY Price DESC
LIMIT 5;

# Exercise 3
SELECT Provider, Price FROM PiecesProviders.Provides
ORDER BY Price DESC
LIMIT 4 OFFSET 2;

# Exercise 4
SELECT * FROM PiecesProviders.Provides
WHERE Provider = "HAL"
ORDER BY Price DESC;

# Exercise 5
SELECT COUNT(Provider) FROM PiecesProviders.Provides
WHERE Piece = 1;