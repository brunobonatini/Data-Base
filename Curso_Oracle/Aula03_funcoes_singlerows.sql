
TIPOS DE FUNÇOES SQL

FUNÇOES SINGLE ROWS - retorna somente um valor para cada linha
					  podem manipular itens de dados
					  receber argumentos e retonar um valor
					  retornam um resultado por linha
					  podem modificar o tipo de dado
					  podem ser aninhadas
					  recebem argumentos que podem ser colunas ou expressões
					  
FUNÇOES MULTIPLE ROWS - retorna um valor para cada grupo de linhas


-- Funçoes Single ROWS
					  
SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'KING';

SELECT employee_id, UPPER(last_name), department_id
FROM employees
WHERE UPPER(last_name) = 'KING';

SELECT CONCAT(' Curso: ','Introdução ORACLE 19c'),
SUBSTR('Introdução ORACLE 19c',1,11),
LENGTH('Introdução ORACLE 19c'),
INSTR('Introdução ORACLE 19c','ORACLE') 
FROM dual; -- tabela que sempre existira em um banco Oracle e só possui uma linha

SELECT first_name "Nome", 
LPAD(first_name, 20, ' ') "Nome alinhado a direita",
RPAD(first_name, 20, ' ') "Nome alinhado a esquerda"
FROM empçoyees;

SELECT job_title, REPLACE(job_title, 'President', 'Presidente') CARGO
FROM jobs
WHERE job_title = 'President';


-- Funçoes tipo NUMBER

SELECT ROUND(45.923, 2), ROUND(45.923, 0)
FROM dual;

SELECT TRUNC(45.923, 2) TRUNC(45.923, 0)
FROM dual;

SELECT MOD(1300, 600) RESTO
FROM dual;

SELECT SQRT(-9), SQRT(9)
FROM dual;


-- Funçoes tipo DATE

SELECT SYSDATE
FROM dual;

DESC dual;

SELECT * FROM dual;

SELECT 1750 * 1,25
FROM dual;


-- Caulculos com Datas

SELECT SYSDATE, SYSDATE + 30, SYSDATE + 60, SYSDATE - 30
FROM dual;

SELECT last_name, ROUND((SYSDATE - hire_date)/7, 2) "SEMANAS DE TRABALHO"
FROM employees;

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hare_date), 2) "MESES DE TRABALHO"
FROM employees;

SELECT SYSDATE, ADD_MONTHS(SYSDATE, 3), NEXT_DAY(SYSDATE,'SEXTA FEIRA'), LAST_DAY(SYSDATE)
FROM dual;

SELECT SYSDATE, ROUND(SYSDATE, 'MONTH'), ROUND(SYSDATE, 'YEAR'),
TRUNC(SYSDATE, 'MONTH'), TRUNC(SYSDATE, 'YEAR')
FROM dual;

SELECT SYSDATE, TO_CHAR(TRUNK(SYSDATE),'DD/MM/YYYY HH24:MI:SS')
FROM dual;





					  



