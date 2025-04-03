-- Parte 1 – Recuperando Dados (Seção 1)

-- 1. Exibir todos os dados da tabela cliente
SELECT * FROM cliente;

-- 2. Exibir apenas os nomes e cidades dos clientes
SELECT nome, cidade FROM cliente;

-- 3. Listar todas as contas registradas (número da conta e saldo)
SELECT numero_conta, saldo FROM conta;

-- Parte 2 – Filtros, Projeções e Concatenação (Seção 2)

-- 4. Listar os nomes dos clientes da cidade de Macaé
SELECT nome FROM cliente WHERE cidade = 'Macaé';

-- 5. Exibir código e nome de clientes com código entre 5 e 15
SELECT codigo, nome FROM cliente WHERE codigo BETWEEN 5 AND 15;

-- 6. Exibir clientes que moram em Niterói, Volta Redonda ou Itaboraí
SELECT nome FROM cliente WHERE cidade IN ('Niterói', 'Volta Redonda', 'Itaboraí');

-- 7. Exibir nomes dos clientes que começam com "F"
SELECT nome FROM cliente WHERE nome LIKE 'F%';

-- 8. Exibir frase "Nome mora em Cidade" usando concatenação e alias
SELECT nome || ' mora em ' || cidade AS Frase FROM cliente;

-- Parte 3 – Ordenações, Operadores Lógicos e Funções (Seção 3)

-- 9. Exibir contas com saldo superior a R$ 9.000, ordenando do maior para o menor
SELECT * FROM conta WHERE saldo > 9000 ORDER BY saldo DESC;

-- 10. Listar clientes que moram em Nova Iguaçu ou que tenham "Silva" no nome
SELECT * FROM cliente WHERE cidade = 'Nova Iguaçu' OR nome LIKE '%Silva%';

-- 11. Exibir o saldo das contas arredondado para o inteiro mais próximo
SELECT numero_conta, ROUND(saldo) AS saldo_arredondado FROM conta;

-- 12. Exibir o nome de todos os clientes em maiúsculas
SELECT UPPER(nome) FROM cliente;

-- 13. Exibir os nomes dos clientes que não são das cidades de Teresópolis nem Campos dos Goytacazes
SELECT nome FROM cliente WHERE cidade NOT IN ('Teresópolis', 'Campos dos Goytacazes');
