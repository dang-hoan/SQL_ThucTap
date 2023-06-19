create database ThucTap

use ThucTap
go

create table "Khoa"(
	makhoa char(10) primary key not null,
	tenkhoa char(30),
	dienthoai char(10)
)

create table "GiangVien"(
	magv int primary key not null,
	hotengv char(30),
	luong decimal(5,2),
	makhoa char(10)
)

create table "SinhVien"(
	masv int primary key not null,
	hotensv char(30),
	makhoa char(10),
	namsinh int,
	quequan char(30)
)

create table "DeTai"(
	madt char(10) primary key not null,
	tendt char(30),
	kinhphi int,
	NoiThucTap char(30)
)

create table "HuongDan"(
	masv int,
	madt char(10),
	magv int,
	ketqua decimal(5,2)
)
