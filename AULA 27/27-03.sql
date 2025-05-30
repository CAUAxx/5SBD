SELECT a.nome
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
JOIN curso c ON m.curso_id = c.curso_id
WHERE c.titulo = 'Banco de Dados';

SELECT titulo
FROM curso
WHERE carga_horaria > 40;

SELECT a.nome
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
WHERE m.nota IS NULL;

SELECT *
FROM matricula
WHERE data_matricula > TO_DATE('2024-01-01', 'YYYY-MM-DD');

SELECT titulo
FROM curso
WHERE carga_horaria BETWEEN 30 AND 60;

SELECT nome
FROM aluno
WHERE email LIKE '%@gmail.com';

SELECT a.nome, c.titulo, m.data_matricula
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
JOIN curso c ON m.curso_id = c.curso_id;

SELECT a.nome, c.titulo, m.nota
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
JOIN curso c ON m.curso_id = c.curso_id;

SELECT c.titulo
FROM curso c
JOIN matricula m ON c.curso_id = m.curso_id
JOIN aluno a ON m.aluno_id = a.aluno_id
WHERE a.nome = 'João Silva';

SELECT c.titulo
FROM curso c
JOIN matricula m ON c.curso_id = m.curso_id
GROUP BY c.titulo
HAVING COUNT(m.aluno_id) > 1;

SELECT a.nome
FROM aluno a
LEFT JOIN matricula m ON a.aluno_id = m.aluno_id
WHERE m.aluno_id IS NULL;

SELECT c.titulo
FROM curso c
LEFT JOIN matricula m ON c.curso_id = m.curso_id
WHERE m.curso_id IS NULL;

SELECT a.nome, COUNT(m.curso_id) AS qtd_cursos
FROM aluno a
LEFT JOIN matricula m ON a.aluno_id = m.aluno_id
GROUP BY a.nome;

SELECT AVG(nota) AS media_geral
FROM matricula
WHERE nota IS NOT NULL;

SELECT c.titulo, AVG(m.nota) AS media_nota
FROM curso c
JOIN matricula m ON c.curso_id = m.curso_id
WHERE m.nota IS NOT NULL
GROUP BY c.titulo;

SELECT MAX(nota) AS maior_nota
FROM matricula;

SELECT a.nome, m.nota
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
WHERE m.nota = (SELECT MIN(nota) FROM matricula);

SELECT c.titulo, COUNT(m.aluno_id) AS total_matriculas
FROM curso c
LEFT JOIN matricula m ON c.curso_id = m.curso_id
GROUP BY c.titulo;

SELECT a.nome
FROM aluno a
JOIN matricula m ON a.aluno_id = m.aluno_id
GROUP BY a.nome
HAVING AVG(m.nota) >= 8.0;

SELECT c.titulo,
       AVG(m.nota) AS media_nota,
       MIN(m.nota) AS menor_nota,
       MAX(m.nota) AS maior_nota
FROM curso c
JOIN matricula m ON c.curso_id = m.curso_id
GROUP BY c.titulo;


