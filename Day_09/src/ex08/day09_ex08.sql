CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop bigint default 10)
RETURNS TABLE (a bigint)
AS $$
WITH RECURSIVE rec(a, b) AS (
	SELECT 0 AS a, 1 AS b
	UNION ALL
	SELECT b, a + b FROM rec WHERE b < pstop)
SELECT a FROM rec;
$$
LANGUAGE SQL;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();
