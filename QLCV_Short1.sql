create database QuanLyCongViec_Short1
go
use QuanLyCongViec_Short1
go



CREATE TABLE NhanVien
(
    ID_NhanVien INT PRIMARY KEY,
    TenNhanVien NVARCHAR(255),
    ChucDanh NVARCHAR(255),
    BoPhan NVARCHAR(255)
);

CREATE TABLE TienDo
(
    ID_TienDo INT PRIMARY KEY,
    PhanTramHoanThanh INT
);

CREATE TABLE ThongKe
(
    ID_ThongKe INT PRIMARY KEY,
    CongViecDangLam NVARCHAR(255),
    CongViecChuaLam NVARCHAR(255),
    CongViecDaLam NVARCHAR(255)
);

CREATE TABLE BaoCao
(
    ID_BaoCao INT PRIMARY KEY,
    NoiDung NVARCHAR(255)
);

CREATE TABLE CongViec
(
    ID_CongViec INT PRIMARY KEY,
    TenCongViec NVARCHAR(255),
    NhomCongViec NVARCHAR(255),
    NgayBatDau DATE,
    NgayKetThuc DATE,
    TrangThai NVARCHAR(255),
    NhanVien_ID INT,
    TienDo_ID INT,
    ThongKe_ID INT,
    BaoCao_ID INT,
    FOREIGN KEY (NhanVien_ID) REFERENCES NhanVien (ID_NhanVien),
    FOREIGN KEY (TienDo_ID) REFERENCES TienDo (ID_TienDo),
    FOREIGN KEY (ThongKe_ID) REFERENCES ThongKe (ID_ThongKe),
    FOREIGN KEY (BaoCao_ID) REFERENCES BaoCao (ID_BaoCao)
);

create table TaiKhoan(
	TenDangNhap nvarchar(255),
	TenNhanVien nvarchar(255),
	MatKhau nvarchar(255),
	Quyen nvarchar(255)
);