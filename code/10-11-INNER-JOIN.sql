-- ===== cau10 =====
SELECT mahs, hoten_hs, gioi_tinh, lop.malop, tenlop, MaGVCN
FROM hocsinh
INNER JOIN lop
ON hocsinh.malop=lop.malop;

select hocsinh.mahs, HoTen_HS, HocKy, MaMH, DiemThi_GiuaKy, DiemThi_CuoiKy
from hocsinh
inner join ketquahoctap
on hocsinh.mahs=ketquahoctap.mahs;

-- ===== cau11 =====
SELECT MaHS, HoTen_HS, Gioi_Tinh, HOCSINH.MaLop, TenLop, Nam_Hoc, MaGVCN, HoTen_GV
FROM HOCSINH
INNER JOIN LOP ON HOCSINH.MaLop=LOP.MaLop
INNER JOIN GIAOVIEN ON LOP.MaGVCN=GIAOVIEN.MaGV;

select hocsinh.mahs, hoten_hs, hocky, ketquahoctap.mamh, ten_mh, diemthi_giuaky, diemthi_cuoiky
from hocsinh
inner join ketquahoctap on hocsinh.mahs=ketquahoctap.mahs
inner join monhoc on ketquahoctap.mamh=monhoc.mamh;