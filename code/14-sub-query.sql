-- ===== cau14 =====
-- HAVING, NOT IN, NOT EXIST
SELECT mahs, HOCSINH.HoTen_HS
FROM HOCSINH WHERE NOT EXISTS 
(SELECT  HOCSINH.HoTen_HS
FROM  KETQUAHOCTAP
where KETQUAHOCTAP.MaHS=HOCSINH.MaHS)

-- hoặc
SELECT HOCSINH.MaHS, hoten_hs
FROM HOCSINH 
WHERE MaHS NOT IN (
SELECT MaHS
FROM KETQUAHOCTAP)

-- giao vien chua tung phu trach mon hoc nao
select magv, hoten_gv
from giaovien
where NOT EXISTS
(select 1
from phutrachbomon
where phutrachbomon.magvpt=giaovien.magv);

