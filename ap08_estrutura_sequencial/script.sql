-- Bloco de Código 2.6.1
-- Random - Valores aleatórios
DO
$$
DECLARE
	n1 NUMERIC(7, 2);
	n2 INTEGER;
	limite_inferior INTEGER := 15;
	limite_superior INTEGER := 100;
BEGIN
	-- 0 <= n1 < 1 (real)
	n1 := random();
	RAISE NOTICE '%', n1;
	-- 1 <= n1 < 10 (real)
	n1 := random() * 10 + 1; -- +1 empurra um pra cima
	RAISE NOTICE '%', n1;
	-- 1 <= n2 <10 (:: faz type cast) (floor arredonda para baixo)
	n2 := floor(random() * 10 + 1)::int;
	RAISE NOTICE '%', n2;
	-- limite_inferior <= n2 <= limite_superior
	n2 := floor(random() * (limite_superior - limite_inferior + 1) + limite_inferior)::int;
	RAISE NOTICE '%', n2;
END;
$$


-- Bloco de Código 2.5.1
-- Operadores aritméticos
-- DO 
-- $$
-- DECLARE
-- 	n1 INTEGER := 10;
-- 	n2 INTEGER := 5;
-- 	n3 NUMERIC(11,2) := 5.3;
-- 	n4 INTEGER := -5;
-- BEGIN
-- 	-- soma
-- 	RAISE NOTICE '% + % = %', n1, n2, n1 + n2; -- 15
-- 	-- unário
-- 	RAISE NOTICE '%', +n4; -- -5
-- 	-- subtração
-- 	RAISE NOTICE '% - % - % = %',
-- 	n1, n2, n4, n1 - n2 - n4; -- 10
-- 	-- unário
-- 	RAISE NOTICE '%', -n4; -- +5
-- 	-- divisão 
-- 	RAISE NOTICE '% / % = %', n1, n2, n1 / n2; -- 2
-- 	-- multiplicação
-- 	RAISE NOTICE '% * % = %', n1, n2, n1 * n2; -- 50
-- 	-- divisão (se envolve um real, a divisão é real)
-- 	RAISE NOTICE '% / % = %', n1, n3, n1 / n3; -- 1.88
-- 	-- divisão (formatando) --> '99.99' define formatação
-- 	RAISE NOTICE '% * % = %', n1, n2, to_char(n1 / n2, '99.99');
-- 	-- resto da divisão
-- 	-- usamos %% para mostrar um %
-- 	RAISE NOTICE '% %% % = %', n1, n3, n1 % n3; -- 10 % 5.30 = 4.70
-- 	-- exponenciação
-- 	RAISE NOTICE '% ^ % = %', n1, n2, n1 ^ n2;
-- 	-- raiz quadrada
-- 	RAISE NOTICE '|/ % = %', n1, |/ n1;
-- 	-- raiz cubica
-- 	RAISE NOTICE '||/ % = %', n1, ||/ n1;
-- 	-- valor absoluto (num sem sinal = negativo vira positivo e 
-- 	-- positivo continua igual
-- 	RAISE NOTICE '% = %', n4, @n4;
-- END;
-- $$


-- Bloco de Código 2.4.1
-- -- Declare Variáveis
-- DO $$
-- DECLARE
-- 	-- declara nome e tipo
-- 	idade INTEGER := 37;
-- 	nome_completo VARCHAR := 'William Santos';
-- 	salario NUMERIC(11,2) := 53.85;
-- BEGIN
--  	RAISE NOTICE 'Meu nome % e tenho % anos. Minha renda é %', 
-- 	nome_completo, idade, salario;
-- END;
-- $$


-- Bloco de Código 2.3.1
-- Placeholder de expressões em strings
-- DO 
-- $$
-- BEGIN
-- 	RAISE NOTICE '% + % = %', 10, 3, 10 + 3;
-- END;
-- $$


-- Bloco de Código 2.2.5
-- DO
-- $$
-- BEGIN
-- 	RAISE NOTICE 'MEU PRIMEIO BLOCO ANÔNIMO';
-- END;
-- $$