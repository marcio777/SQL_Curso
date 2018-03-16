create table compras
(
	id int primary key identity not null,
	valor decimal(18,2),
	data date,
	observacoes nvarchar(200),
	recebida bit 

)

