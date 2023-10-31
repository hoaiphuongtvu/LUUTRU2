CREATE DATABASE QLSV

USE QLSV

DROP DATABASE QLSV

CREATE TABLE CT_DaoTao
(
	MaCTDT varchar(10)not null,
	TenCTDT nvarchar(50)
)


CREATE TABLE KhoaHoc
(
	MaKH varchar(10)not null,
	MaCTDT varchar(10)not null,
	TenKH nvarchar(50)
)


CREATE TABLE Lop
(
	MaLop varchar(10)not null,
	MaKH varchar(10)not null,
	TenLop nvarchar(10)
)


CREATE TABLE MonHoc
(
	MaMH varchar(10)not null,
	TenMH nvarchar(30)
)


CREATE TABLE SinhVien
(
	MaSV varchar(10)not null,
	HoTen nvarchar(50)not null,
	GioiTinh nvarchar(3)not null,
	NgaySinh datetime,
	NoiSinh nvarchar(50)not null,
	MaLop varchar(10)not null
)


CREATE TABLE KQT
(
	MaSV varchar(10)not null,
	MaMH varchar(10)not null,
	LanThi int not null,
	DiemThi float
)

SELECT *
FROM CT_DaoTao

SELECT *
FROM KhoaHoc

SELECT *
FROM Lop

SELECT *
FROM MonHoc

SELECT *
FROM SinhVien

SELECT *
FROM KQT

ALTER TABLE CT_DaoTao ADD CONSTRAINT PK_CT_DaoTao PRIMARY KEY (MaCTDT)
ALTER TABLE KhoaHoc ADD CONSTRAINT PK_KhoaHoc PRIMARY KEY (MaKH)
ALTER TABLE Lop ADD CONSTRAINT PK_Lop PRIMARY KEY (MaLop)
ALTER TABLE MonHoc ADD CONSTRAINT PK_MonHoc PRIMARY KEY (MaMH)
ALTER TABLE SinhVien ADD CONSTRAINT PK_SinhVien PRIMARY KEY (MaSV)
ALTER TABLE KQT ADD CONSTRAINT PK_KQT PRIMARY KEY (MaSV, MaMH, LanThi)

SP_PKEYS CT_DaoTao
SP_PKEYS KhoaHoc
SP_PKEYS Lop
SP_PKEYS MonHoc
SP_PKEYS SinhVien
SP_PKEYS KQT

ALTER TABLE KhoaHoc ADD CONSTRAINT FK_KH_MaCTDT FOREIGN KEY (MaCTDT) REFERENCES CT_DaoTao(MaCTDT)
ALTER TABLE Lop ADD CONSTRAINT FK_Lop_MaKH FOREIGN KEY (MaKH) REFERENCES KhoaHoc(MaKH)
ALTER TABLE SinhVien ADD CONSTRAINT FK_SV_MaLop FOREIGN KEY (MaLop) REFERENCES SinhVien(MaLop)
ALTER TABLE KQT ADD CONSTRAINT FK_KQT_MaSV FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
ALTER TABLE KQT ADD CONSTRAINT FK_KQT_MaMH FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
