-- ===== cau12 =====
-- Cách 1:
SELECT DISTINCT dia_chi
FROM  HOCSINH;

-- Cách 2:
SELECT dia_chi
FROM  HOCSINH
Group by dia_chi;

select hoten_hs, gioi_tinh
from hocsinh
group by hoten_hs, gioi_tinh;

