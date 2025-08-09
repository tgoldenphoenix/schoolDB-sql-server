-- ===== cau07 =====
select *
from hocsinh
where hoten_hs like 'Nguyen%';
-- try 'Nguyen %'

select *
from hocsinh
where hoten_hs like '%No';

select *
from hocsinh
where hoten_hs like '%Thi%';

SELECT *
FROM hocsinh
WHERE hoten_hs LIKE '%Thi%' -- Contains the substring anywhere
  AND hoten_hs NOT LIKE 'Thi%' -- Does not start with the substring
  AND hoten_hs NOT LIKE '%Thi'; -- Does not end with the substring

select LEN('Glyn Dauney');

select *
from hocsinh
where LEN(hoten_hs) = 11;

select *
from hocsinh
where LEN(hoten_hs) <= 11 ;