CREATE DATABASE QLSV

USE QLSV

--DROP DATABASE QLSV

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
ALTER TABLE SinhVien ADD CONSTRAINT FK_SV_MaLop FOREIGN KEY (MaLop) REFERENCES Lop(MaLop)
ALTER TABLE KQT ADD CONSTRAINT FK_KQT_MaSV FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
ALTER TABLE KQT ADD CONSTRAINT FK_KQT_MaMH FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)

INSERT INTO CT_DaoTao VALUES ('1',N'Cử Nhân')
INSERT INTO CT_DaoTao VALUES ('2',N'Cao Đẳng')
INSERT INTO CT_DaoTao VALUES ('3',N'Trung Cấp')

INSERT INTO MonHoc VALUES ('TH101',N'Tin học đại cương')
INSERT INTO MonHoc VALUES ('TH110',N'Toán rời rạc')
INSERT INTO MonHoc VALUES ('TH102',N'Cơ sở dữ liệu')

INSERT INTO KhoaHoc VALUES ('1','1',N'Khóa 1 năm 2005')
INSERT INTO KhoaHoc VALUES ('2','1',N'Khóa 2 năm 2006')
INSERT INTO KhoaHoc VALUES ('3','2',N'Khóa 1 năm 2007')
INSERT INTO KhoaHoc VALUES ('4','3',N'Khóa 1 năm 2008')
INSERT INTO KhoaHoc VALUES ('5','2',N'Khóa 2 năm 2008')

INSERT INTO Lop VALUES ('1','1','K1_1')
INSERT INTO Lop VALUES ('2','1','K2_1')
INSERT INTO Lop VALUES ('3','1','K3_1')
INSERT INTO Lop VALUES ('4','2','K3_2')

INSERT INTO SinhVien VALUES ('K116',N'Đinh Nguyễn Vân Anh',N'Nữ','12/18/1985',N'Bình Thuận','1')
INSERT INTO SinhVien VALUES ('K117',N'Trần Hoàng Anh',N'Nữ','4/8/1986',N'Bình Dương','1')
INSERT INTO SinhVien VALUES ('K118',N'Bùi Thanh Bình',N'Nam','10/23/1985',N'Đồng Nai','1')
INSERT INTO SinhVien VALUES ('K119',N'Phạm Nhật Tân',N'Nam','1/15/1985',N'Đồng Tháp','2')
INSERT INTO SinhVien VALUES ('K120',N'Định Thiện Hòa',N'Nam','12/8/1985',N'Vĩnh Long','3')
INSERT INTO SinhVien VALUES ('K121',N'Nguyễn Anh Khoa',N'Nam','11/14/1985',N'Vũng Tàu','3')
INSERT INTO SinhVien VALUES ('K122',N'Trương Mộng Thúy',N'Nữ','5/12/1986',N'Cần Thơ','2')
INSERT INTO SinhVien VALUES ('K123',N'Võ Anh Thi',N'Nữ','5/23/1986',N'Bến Tre','2')

INSERT INTO KQT VALUES ('K116','TH101','1','8')
INSERT INTO KQT VALUES ('K117','TH101','1','4')
INSERT INTO KQT VALUES ('K118','TH101','1','6.5')
INSERT INTO KQT VALUES ('K119','TH102','1','5')
INSERT INTO KQT VALUES ('K120','TH102','1','7')
INSERT INTO KQT VALUES ('K116','TH110','1','7')
INSERT INTO KQT VALUES ('K118','TH102','1','9')
INSERT INTO KQT VALUES ('K119','TH101','1','6')
INSERT INTO KQT VALUES ('K120','TH101','1','5')
INSERT INTO KQT VALUES ('K116','TH102','1','7.5')
INSERT INTO KQT VALUES ('K117','TH101','2','7')




