--cau03
select * from hocsinh;

UPDATE hocsinh
SET malop = 11, hoten_hs= 'Senjougahara', gioi_tinh = 'nu'
WHERE mahs = 1;
select * from hocsinh where mahs = 1;

--cau04
-- !!! WARNING!!! If you omit the WHERE clause, all records in the table will be deleted!
DELETE FROM hocsinh WHERE mahs=14;

--cau05
select * from giaovien;

select hoten_hs, hoten_ph, gioi_tinh
from hocsinh;

select * from lop;

--cau06
select mahs, hoten_hs
from hocsinh
where gioi_tinh = 'nam';

-- hoten_ph = null is wrong
select *
from hocsinh
where hoten_ph IS NULL;

select *
from hocsinh
where gioi_tinh = 'nu' AND dia_chi = 'thanh khe';

select *
from hocsinh
where (gioi_tinh = 'nam' AND dia_chi = 'hai chau')
  OR  (gioi_tinh = 'nu' AND dia_chi = 'thanh khe');

select *
from hocsinh
where (gioi_tinh='nam' AND hoten_ph IS NULL)
  OR  (gioi_tinh='nu' AND malop IS NULL);

select *
from hocsinh
where (gioi_tinh='nam' AND malop IS NULL)
  OR  (gioi_tinh='nam' AND hoten_ph IS NULL);