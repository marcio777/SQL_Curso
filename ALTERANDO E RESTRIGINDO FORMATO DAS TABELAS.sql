
--Configure o valor padr�o para a coluna recebida. Cole o comando SQL aqui.

alter table compras add default '0' for recebida


--Configure a coluna observacoes para n�o aceitar valores nulos. Cole o comando SQL aqui.
--Se o seu comando falhar, pode ser porque voc� j� tem elementos nulos na tabela, e o SQL Server n�o consegue colocar essa condi��o,
-- pois linhas que j� existem fogem da regra. Nesse caso, fa�a um update, e coloque valores em todos os campos nulos.


	alter table compras alter column observacoes nvarchar(200) not null

	--Reescreva o CREATE TABLE do come�o do curso, marcando OBSERVACOES como nulo e valor padr�o do RECEBIDO como 1.

	CREATE TABLE COMPRAS (
  id int PRIMARY KEY IDENTITY NOT NULL,
  valor decimal(10,2),
  data datetime,
  observacoes nvarchar NULL,
  recebida bit DEFAULT '1'
);
