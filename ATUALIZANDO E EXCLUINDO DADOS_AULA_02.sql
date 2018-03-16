
 SELECT ID, VALOR, OBSERVACOES 
 FROM COMPRAS
 WHERE VALOR BETWEEN 1000 AND 2000
 AND DATA BETWEEN '2009-01-01' AND '2009-03-31';

 SELECT * FROM COMPRAS
 UPDATE compras
 SET VALOR = 1500
 WHERE ID = 10;
 
 DELETE FROM COMPRAS 
 WHERE ID = 10;

 UPDATE COMPRAS 
 SET OBSERVACOES = 'PREPARANDO O NATAL'
 WHERE DATA = '2010-12-20';

 SELECT DATA,OBSERVACOES,ID,VALOR
 FROM COMPRAS 
 WHERE OBSERVACOES  = 'PREPARANDO O NATAL';

 select * from Compras where data < '2009-06-01'

 
 --- EXERCICIOS----------
 
 
 -- ALTERE O VALOR DAS COMPRAS FEITAS ANTES DE 01/06/2009. SOME R$10,00 AO VALOR ATUAL.

	UPDATE COMPRAS SET VALOR = VALOR + 10
	WHERE DATA < '2009-06-01'


 -- Atualize todas as compras feitas entre 01/07/2009 e 01/07/2010 para que elas tenham a observação 'entregue antes de 2011' e a coluna recebida com o valor TRUE.

	UPDATE COMPRAS SET OBSERVACOES = 'entregue antes de 2011'
	WHERE DATA BETWEEN '2009-07-01' AND '2010-07-01'AND RECEBIDA = 'TRUE'

 -- Exclua as compras realizadas entre 05 e 20 março de 2009. Coloque abaixo o comando executado.

	DELETE FROM COMPRAS 
	WHERE DATA BETWEEN '2009-03-05' AND '2009-03-20'


	-- Use o operador NOT e monte um SELECT que retorna todas as compras com valor diferente de R$ 108,00.

	SELECT * FROM COMPRAS 	
	 WHERE NOT VALOR =100