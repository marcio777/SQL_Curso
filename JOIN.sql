-- Crie a tabela compradores com id, nome, endereco e telefone

create table compradoresu (

id int PRIMARY KEY IDENTITY NOT NULL,
nome nvarchar (30),
endereco nvarchar (30),
telefone nvarchar (20)


)

-- Insira os compradores: Guilherme Silveira e Gabriel Ferreira, com um insert apenas, use vírgula para separar os valores. Cole o código abaixo.

 INSERT INTO compradores VALUES ('Guilherme Silveira', 'rua vergueiro, 3185', '12345678'), ('Gabriel Ferreira', 'av paulista , 2543', '87654321');

 -- Adicione a coluna comprador_id na tabela compras e defina a chave estrangeira (foreign key)referenciando o id da tabela compradores.

 alter table compras add comprador_id int

 -- Definindo a foreign key:

alter table compras
add constraint FK_Compras_CompradorID foreign key (comprador_id)
references compradores(id)


--Atualize a tabela compras e insira o id dos compradores na coluna comprador_id. 
 
 update compras set comprador_id = 1 where id < 22

 --Exiba o NOME do comprador e o VALOR de todas as compras feitas antes de 09/08/2010. 

 select nome, valor from compras inner join compradores on compras.comprador_id =compradores.id
 where data < '2010-08-09'

 --Exiba todas as compras do comprador que possui ID igual a 2.
 
 select valor from compras inner join compradores on compras.comprador_id = compradores.id
 where comprador_id = 2

 select *from compras
 select * from compras
join compradores on compras.comprador_id=compradores.id

-- Exiba todas as compras (mas sem os dados do comprador), cujo comprador tenha nome que começa com 'GABRIEL'.
	
	select compras.id, valor, data, observacoes, recebida
	from compras
	inner join compradores
		on compras.comprador_id=compradores.id
    where compradores.nome like 'GABRIEL%';

	-- Exiba o nome do comprador e a soma de todas as suas compras.

	select compradores.nome, sum (valor) as total
		from compras 
		inner join compradores 
			on compras.comprador_id = compradores.id 
       group by compradores.nome




