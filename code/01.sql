-- ==== Cau hoi 01 ====
-- 2 tables giaovien & monHoc do not have foreign key => create first
-- Khi insert data cung phai insert theo thu tu tao bang
CREATE TABLE dbo.giaovien
(
  magv int IDENTITY(1,1) not null,
  hoten_gv NVARCHAR(100) not null,

  CONSTRAINT PK_giaovien_magv PRIMARY KEY (magv),
)

CREATE TABLE dbo.monhoc
(
  mamh int IDENTITY(1,1) not null,
  ten_mh NVARCHAR(100) not null,

  CONSTRAINT PK_monhoc_mamh PRIMARY KEY (mamh),
)

CREATE TABLE dbo.lop
(
  malop int IDENTITY(1,1) not null,
  tenlop NVARCHAR(100) not null,
  -- cot nay la khoa ngoai duoc noi voi magv la khoa chinh trong table giaovien
  magvcn int not null,
  nam_hoc date not null,

  CONSTRAINT PK_lop_malop PRIMARY KEY (malop),
  CONSTRAINT FK_lop_magvcn FOREIGN KEY (magvcn) REFERENCES dbo.giaovien(magv)
)

CREATE TABLE dbo.hocsinh
(
  mahs int IDENTITY(1,1) not null,
  hoten_hs NVARCHAR(100) not null,
  hoten_ph NVARCHAR(100),
  gioi_tinh NVARCHAR(20) not null,
  dia_chi NVARCHAR(100),
  malop int,

  CONSTRAINT PK_hocsinh_mahs PRIMARY KEY (mahs),
  CONSTRAINT FK_hocsinh_malop FOREIGN KEY (malop) REFERENCES dbo.lop(malop)
)

CREATE TABLE dbo.ketquahoctap
(
  mahs int not null,
  hocky int,
  mamh int not null,
  diemthi_giuaky decimal(10,2),
  diemthi_cuoiky decimal(10,2),
  ngaygiothi_cuoiky datetime not null,

  CONSTRAINT PK_ketquahoctap PRIMARY KEY (mahs, hocky, mamh),
  CONSTRAINT FK_ketquahoctap_mahs FOREIGN KEY (mahs) REFERENCES dbo.hocsinh(mahs),
  CONSTRAINT FK_ketquahoctap_mamh FOREIGN KEY (mamh) REFERENCES dbo.monhoc(mamh)
)

CREATE TABLE dbo.phutrachbomon
(
  magvpt int not null,
  malop int,
  mamh int not null,
  hocky int,
  
  CONSTRAINT PK_phutrachbomon PRIMARY KEY (magvpt, malop, mamh, hocky),
  CONSTRAINT FK_phutrachbomon_magvpt FOREIGN KEY (magvpt) REFERENCES dbo.giaovien(magv),
  CONSTRAINT FK_phutrachbomon_malop FOREIGN KEY (malop) REFERENCES dbo.lop(malop),
  CONSTRAINT FK_phutrachbomon_mamh FOREIGN KEY (mamh) REFERENCES dbo.monhoc(mamh)
)

-- alter tables
-- from not null -> null
alter table lop
ALTER COLUMN magvcn INT NULL;

UPDATE hocsinh
SET malop = null
WHERE mahs = 20;
select * from lop;