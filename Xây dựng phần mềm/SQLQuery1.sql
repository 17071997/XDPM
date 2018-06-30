use master
create database QuanLyChoThueBangDia
go
use QuanLyChoThueBangDia
go
create table KhachHangs(MaKhachHang varchar(15) primary key not null,TenKhachHang nvarchar(max) not null,SoDienThoai char(11) not null)
go
insert KhachHangs(MaKhachHang,TenKhachHang,SoDienThoai)
values('KH003','Tran The Vu','01269811755')
insert KhachHangs(MaKhachHang,TenKhachHang,SoDienThoai)
values('KH004','Nguyen Thi Kim Thoa','0973244037')
go
create table LoaiDias(MaLoai varchar(15) primary key not null,TenLoai nvarchar(max) not null,ThoiGianChoPhepThue int not null,GiaThue money not null)
go
insert LoaiDias(MaLoai,TenLoai,ThoiGianChoPhepThue,GiaThue)
values('Type001','DVD',1,3.00)
insert LoaiDias
values('Type002','Game',2,2.50)
go
create table TuaDes(MaTuaDe varchar(15) primary key not null,NoiDungTuaDe nvarchar(max) not null,ImageUrl nvarchar(max))
go
insert TuaDes
values('Sh001','Shape of voice','D:\\Product\\CSharpProducts\\Xây dựng phần mềm\\Image\\koe-no-katachi.jpg')
insert TuaDes(MaTuaDe,NoiDungTuaDe)
values('Ten001','Tenchu:Fatal Shadow')
go
create table Logins(UserName nvarchar(100) primary key not null,Pass char(50) not null)
go
insert Logins
values('Admin','autocomplete')
go
create table Dias(MaDia int primary key not null,SoLuongDia int not null,TinhTrangThue nvarchar(20) not null,TinhTrangDia nvarchar(20) not null,IDKhachHang varchar(15) not null,IDTuaDe varchar(15) not null,IDLoaiDia varchar(15) not null)
go
insert Dias(MaDia,SoLuongDia,TinhTrangThue,TinhTrangDia,IDTuaDe,IDLoaiDia)
values(2,50,'Available','Good','Sh001','Type001')
insert Dias(MaDia,SoLuongDia,TinhTrangThue,TinhTrangDia,IDTuaDe,IDLoaiDia)
values(3,50,'Available','Good','Sh001','Type001')
insert Dias(MaDia,SoLuongDia,TinhTrangThue,TinhTrangDia,IDTuaDe,IDLoaiDia)
values(4,50,'Available','Good','Sh001','Type001')
go
CREATE TABLE [dbo].[NhatKyThueDia](
	[NgayChoThue] [datetime] NOT NULL,
	[MaTua] [varchar](15) NOT NULL,
	[MaDia] [varchar](15) NOT NULL,
	[MaKH] [varchar](15) NOT NULL,
	[SoLuongThue] [int] NOT NULL,
	[TienDatCoc] [money] NOT NULL,
	[PhiTreHen] [money] NULL,
	[NgayTraDia] [datetime] NULL,
 CONSTRAINT [PK_NhatKyThueDia] PRIMARY KEY CLUSTERED 
(
	[MaDia] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



