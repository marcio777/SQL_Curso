
--Configure o valor padrão para a coluna recebida. Cole o comando SQL aqui.

alter table compras add default '0' for recebida


--Configure a coluna observacoes para não aceitar valores nulos. Cole o comando SQL aqui.
--Se o seu comando falhar, pode ser porque você já tem elementos nulos na tabela, e o SQL Server não consegue colocar essa condição,
-- pois linhas que já existem fogem da regra. Nesse caso, faça um update, e coloque valores em todos os campos nulos.


	alter table compras alter column observacoes nvarchar(200) not null

	--Reescreva o CREATE TABLE do começo do curso, marcando OBSERVACOES como nulo e valor padrão do RECEBIDO como 1.

	CREATE TABLE COMPRAS (
  id int PRIMARY KEY IDENTITY NOT NULL,
  valor decimal(10,2),
  data datetime,
  observacoes nvarchar NULL,
  recebida bit DEFAULT '1'
);
