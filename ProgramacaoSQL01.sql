--a) Dado um número inteiro. Calcule e mostre o seu fatorial. (Não usar entrada superior a 12)
 
declare @num int,
		@fat int
set @num = 5
set @fat = 1
while (@num > 1)
begin
	set @fat = @fat * @num
	print @fat
	set @num = @num - 1
end
 
-- b) Dados A, B, e C de uma equação do 2o grau da fórmula AX2+BX+C=0. Verifique e mostre a
-- existência de raízes reais e se caso exista, calcule e mostre. Caso não existam, exibir mensagem.
 
declare @a decimal(7,2),
		@b decimal(7,2),
		@c decimal(7,2),
		@delta decimal(7,2),
		@equacao decimal(7,2)
set @a = 5.0
set @b = 2.0
set @c = -10.0
set @delta = CAST(@b * @b - 4 * @b * @c AS DECIMAL(7,2))
if (@delta < 0)
begin
	print 'Delta negativo'
end
if (@delta = 0)
begin
	set @equacao = (- @b + sqrt(@delta)) / (2 * @a)
	print @equacao
end
else
begin
	set @equacao = (- @b + sqrt(@delta)) / (2 * @a)
	print @equacao
	set @equacao = (- @b - sqrt(@delta)) / (2 * @a)
	print @equacao
end
 
-- c) Calcule e mostre quantos anos serão necessários para que Ana seja maior que Maria sabendo
-- que Ana tem 1,10 m e cresce 3 cm ao ano e Maria tem 1,5 m e cresce 2 cm ao ano.
 
declare @alturaM float,
		@alturaA float,
		@count int
set @alturaM = 1.5
set	@alturaA = 1.1
set	@count = 0
while (@alturaA <= @alturaM)
begin
	set @alturaM = @alturaM + 0.02
	set @alturaA = @alturaA + 0.03
	set @count = @count + 1
end
print cast(@count as varchar(2)) + ' anos'
 
-- d) Seja a seguinte série: 1, 4, 4, 2, 5, 5, 3, 6, 6, 4, 7, 7, ...
 
declare @nume1 int,
		@nume2 int,
		@incre int
set @nume1 = 0
set @nume2 = 3
set @incre = 1
while (@incre < 10)
begin
	if (@incre % 2 = 0)
	begin
		set @nume2 = @nume2 + 1
		print @nume2
		print @nume2
	end
	else
	begin
		set @nume1 = @nume1 + 1
		print @nume1
	end
	set @incre = @incre + 1
end
