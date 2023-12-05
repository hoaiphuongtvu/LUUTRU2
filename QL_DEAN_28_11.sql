CREATE DATABASE QL_DEAN
USE QL_DEAN
CREATE TABLE NhanVien
(
MaNV varchar(10) not null,
HoNV varchar(10) not null,
TenLot varchar(30) not null,
TenNV varchar(10) not null,
NgSinh datetime,
Phai varchar(4) not null,
Dchi varchar(20) not null,
MaNQL varchar(10),
Phong varchar(10) not null,
Luong float
 )

CREATE TABLE PhongBan
(
MaPB varchar(10) not null,
TenPB varchar(20) not null,
TrPHG varchar(10) not null,
DiaDiem varchar(10) not null,
NgayNhanChuc datetime
 )
CREATE TABLE DeAn
(
MaDA varchar(10) not null,
TenDA varchar(20) not null,
DiaDiemDA varchar(20) not null,
Phong varchar(10) not null,
NgayBD_DK datetime,
NgayKT_DK datetime
)
CREATE TABLE ThanNhan
(
MaNV varchar(10) not null,
MaTN varchar(10) not null,
TenTN varchar(30) not null,
Phai varchar(4) not null,
NgSinh datetime,
QuanHe varchar(10) not null
 )

CREATE TABLE PhanCong
(
 MaNV varchar(10) not null,
 MaDA varchar(10) not null,
 ThoiGian varchar(10) not null
 )
 SELECT *
FROM NhanVien
SELECT *
FROM PhongBan
SELECT *
FROM DeAn 
SELECT *
FROM ThanNhan 
SELECT *
FROM PhanCong 
--
ALTER TABLE NhanVien ADD CONSTRAINT PK_NhanVien PRIMARY KEY (MaNV)
ALTER TABLE PhongBan ADD CONSTRAINT PK_PhongBan PRIMARY KEY (MaPB)
ALTER TABLE DeAn     ADD CONSTRAINT PK_DeAn     PRIMARY KEY (MaDA)
ALTER TABLE ThanNhan ADD CONSTRAINT PK_ThanNhan PRIMARY KEY (MaNV, MaTN)
ALTER TABLE PhanCong ADD CONSTRAINT PK_PhanCong PRIMARY KEY (MaNV, MaDA)
--kiem tra
SP_PKEYS NhanVien
SP_PKEYS PhongBan
SP_PKEYS DeAn
SP_PKEYS ThanNhan
SP_PKEYS PhanCong
-- KHOA PHU
ALTER TABLE ThanNhan ADD CONSTRAINT FK_TN_MaNV FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
ALTER TABLE PhanCong ADD CONSTRAINT FK_PC_MaNV FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
ALTER TABLE PhanCong ADD CONSTRAINT FK_PC_MaDA FOREIGN KEY (MaDA) REFERENCES DeAn(MaDA)
--
SET DATEFORMAT DMY
INSERT INTO NhanVien VALUES ('001','Vuong','Ngoc','Quyen','10/22/1957','Nu','Ha Noi','','QL','3000000')
INSERT INTO NhanVien VALUES ('002','Nguyen','Thanh','Tung','1/9/1955','Nam','TPHCM','001','NC','2500000')
INSERT INTO NhanVien VALUES ('003','Le','Thi','Nhan','12/18/1960','Nu','TPHCM','001','DH','2500000')
INSERT INTO NhanVien VALUES ('004','Dinh','Ba','Tien','1/9/1968','Nam','Dong Thap','002','NC','2200000')
INSERT INTO NhanVien VALUES ('005','Bui','Thuy','Vu','6/8/1973','Nu','Tra Vinh','003','DH','2200000')
INSERT INTO NhanVien VALUES ('006','Nguyen','Manh','Hung','8/30/1981','Nam','Dong Nai','002','NC','2000000')
INSERT INTO NhanVien VALUES ('007','Tran','Hong','Van','8/1/1976','Nu','Vinh Long','004','NC','1800000')

INSERT INTO PhongBan VALUES ('QL','Quan Ly','001','','5/22/2000')
INSERT INTO PhongBan VALUES ('DH','Dieu Hanh','003','','10/10/2002')
INSERT INTO PhongBan VALUES ('NC','Nghien Cuu','002','','3/15/2002')
INSERT INTO DeAn VALUES ('TH001','Tin hoc hoa 1','Ha Noi','NC','2/1/2003','2/1/2004')
INSERT INTO DeAn VALUES ('TH002','Tin hoc hoa 2','TPHCM','NC','6/4/2003','2/4/2004')
INSERT INTO DeAn VALUES ('DT001','Dao tao 1','Nha Trang','DH','2/4/2002','2/4/2006')
INSERT INTO DeAn VALUES ('DT002','Dao tao 2','Da Nang ','DH','2/1/2006','12/12/2006')

INSERT INTO ThanNhan VALUES ('003','1','Tran Minh Tien','Nam','12/11/1990','Con')
INSERT INTO ThanNhan VALUES ('003','2','Tran Ngoc Linh','Nu','3/10/1993','Con')
INSERT INTO ThanNhan VALUES ('003','3','Tran Minh Long','Nam','10/10/1957','Vo Chong')
INSERT INTO ThanNhan VALUES ('001','1','Le Nhat Minh','Nam','4/27/1955','Vo Chong')
INSERT INTO ThanNhan VALUES ('002','1','Le Hoai Thuong','Nu','12/5/1960','Vo Chong')
INSERT INTO ThanNhan VALUES ('004','1','Le Phi Phung','Nu','12/24/1960','Vo Chong')
INSERT INTO ThanNhan VALUES ('005','1','Tran Thu Hong','Nu','4/11/1978','Vo Chong')
INSERT INTO ThanNhan VALUES ('005','2','Nguyen Manh Tam','Nam','3/12/2003','Con')

INSERT INTO PhanCong VALUES ('001','TH001','30')
INSERT INTO PhanCong VALUES ('001','TH002','12.5')
INSERT INTO PhanCong VALUES ('002','TH001','10')
INSERT INTO PhanCong VALUES ('002','TH002','10')
INSERT INTO PhanCong VALUES ('002','DT001','10')
INSERT INTO PhanCong VALUES ('002','DT002','10')
INSERT INTO PhanCong VALUES ('003','TH001','37.5')
INSERT INTO PhanCong VALUES ('004','DT001','22.5')
INSERT INTO PhanCong VALUES ('004','DT002','10')
INSERT INTO PhanCong VALUES ('006','DT001','30.5')
INSERT INTO PhanCong VALUES ('007','TH001','20')
INSERT INTO PhanCong VALUES ('007','TH002','10')

SELECT *
FROM NhanVien
SELECT *
FROM PhongBan
SELECT *
FROM DeAn
SELECT *
FROM ThanNhan
SELECT *
FROM PhanCong
--BT
--C1
SELECT *
FROM NhanVien
WHERE YEAR(NgSinh) BETWEEN 1965 AND 1970
--C2
SELECT HoNV,TenLot,TenNV,TenPB
FROM NhanVien JOIN PhongBan ON NhanVien.Phong=PhongBan.MaPB
WHERE Luong BETWEEN 2000000 AND 3000000
--C3
SELECT *
FROM NhanVien
WHERE HoNV LIKE 'Nguyen' OR TenNV LIKE 'T%'
--C4
SELECT*
FROM NhanVien
WHERE Phong IN ('NC','QL')
--C5
SELECT *
FROM ThanNhan
WHERE YEAR(GETDATE()) - YEAR(NgSinh)<18
--C6
SELECT *
FROM NhanVien
WHERE Phai='Nu' AND YEAR(GETDATE()) - YEAR(NgSinh)>30
--C7
SELECT HoNV,TenLot,TenNV,Dchi
FROM NhanVien JOIN PhongBan ON NhanVien.Phong=PhongBan.MaPB
WHERE TenPB='Nghien Cuu'
