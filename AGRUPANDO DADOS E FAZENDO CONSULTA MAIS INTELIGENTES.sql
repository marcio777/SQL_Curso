-- Calcule a média de todas as compras com datas inferiores a 12/05/2009. Cole a instrução SQL aqui quando acabar.

SELECT AVG(VALOR) 
FROM COMPRAS 
WHERE DATA < '2009-05-12'

-- Calcule a quantidade de compras com datas inferiores a 12/05/2009 e que já foram recebidas.

SELECT COUNT(ID) AS QUANTIDADE
FROM COMPRAS 
WHERE DATA < '2009-05-12' AND RECEBIDA = 1

--Calcule a soma de todas as compras, agrupadas se a compra foi recebida ou não.

SELECT SUM (VALOR) AS SOMA 
FROM COMPRAS 
GROUP BY RECEBIDA


