-- ===== cau09 =====
select *
from hocsinh
ORDER BY hoten_hs ASC;
-- Ascending is default

select *
from hocsinh
ORDER BY dia_chi DESC;

select *
from hocsinh
ORDER BY hoten_hs, dia_chi DESC;

select *
from hocsinh
ORDER BY hoten_hs, dia_chi;