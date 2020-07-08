use QUANLIHOCSINH
go
create table NienKhoa
 (
	ThoiGian varchar(20) primary key
 )

 go

create table HanhKiem
 (
	MaHanhKiem varchar(20) primary key,
	DiemChuyenCan float not null,
	LoaiHanhKiem nvarchar(10) not null
 )
 go

create table PhongHoc
 (
	MaPhong varchar(20) primary key,
	SoPhong varchar(20) not null,
	SucChua int not null
 )
 go

create table HocSinh
 (
	MaHocSinh varchar(20) primary key,
	TenHocSinh nvarchar(50) not null,
	Lop varchar(20) not null,
	GioiTinh nchar(10),
	DiaChi nvarchar(100),
	NgaySinh date
 )
 go


create table LopHoc
 (
	MaLop varchar(20) primary key,
	TenLop nvarchar(20) not null,
	SiSo int,
	MaPhong varchar(20) not null,
	ThoiGian varchar(20) not null

	foreign key(MaPhong) references PhongHoc(MaPhong),
	foreign key(ThoiGian) references NienKhoa(ThoiGian),
 )
 go

create table BangDiemMonHoc
 (
	MaBangDiemMonHoc varchar(20) primary key,
	DiemKiemTraMieng float,
	DiemKiemTra15p float,
	DiemKiemTra1tiet float,
	DiemThi float,
	DiemTongKet float,
 )
 go

create table ThanNhan
 (
	Ten nvarchar(20) not null,
	DiaChi nvarchar(20) not null,
	GioiTinh nchar(10),
	Tuoi int,
	MoiQuanHe nchar(20),
	SoDienThoai int,
	MaHocSinh varchar(20) not null

	foreign key(MaHocSinh) references HocSinh(MaHocSinh),
 )
 go

create table GiaoVien
 (
	MaGV varchar(20) primary key,
	TenGV nvarchar(20) not null,
	GioiTinh nchar(10),
	Tuoi int,
	SoDienThoai int,
 )
 go

create table MonHoc
 (
	MaMonHoc varchar(20) primary key,
	TenMonHoc nvarchar(20) not null,
	KetQua nchar(10),
	MaBangDiemMonHoc varchar(20) not null

	foreign key(MaBangDiemMonHoc) references BangDiemMonHoc(MaBangDiemMonHoc),
 )
 go

create table Thuoc
 (
	MaLop varchar(20) not null,
	MaHocSinh varchar(20) not null

	primary key(MaLop, MaHocSinh),
	foreign key(MaLop) references LopHoc(MaLop),
	foreign key(MaHocSinh) references HocSinh(MaHocSinh)
 )
 go

create table NK_PH
 (
	ThoiGian varchar(20) not null,
	MaPhong varchar(20) not null

	primary key(ThoiGian, MaPhong),
	foreign key(ThoiGian) references NienKhoa(ThoiGian),
	foreign key(MaPhong) references PhongHoc(MaPhong)
 )
 go

create table DuocDayBoi
 (
	MaHocSinh varchar(20) not null,
	MaGV varchar(20) not null

	primary key(MaHocSinh, MaGV),
	foreign key(MaHocSinh) references HocSinh(MaHocSinh),
	foreign key(MaGV) references GiaoVien(MaGV)
 )
 go

create table HS_MH
 (
	MaHocSinh varchar(20) not null,
	MaMonHoc varchar(20) not null

	primary key(MaHocSinh, MaMonHoc),
	foreign key(MaHocSinh) references HocSinh(MaHocSinh),
	foreign key(MaMonHoc) references MonHoc(MaMonHoc)
 )
 go

create table Day
 (
	MaGV varchar(20) not null,
	MaMonHoc varchar(20) not null

	primary key(MaGV, MaMonHoc),
	foreign key(MaGV) references GiaoVien(MaGV),
	foreign key(MaMonHoc) references MonHoc(MaMonHoc)
 )
 go

create table LH_BDMH
 (
	MaLop varchar(20) not null,
	MaBangDiemMonHoc varchar(20) not null

	primary key(MaLop, MaBangDiemMonHoc),
	foreign key(MaLop) references LopHoc(MaLop),
	foreign key(MaBangDiemMonHoc) references BangDiemMonHoc(MaBangDiemMonHoc)
 )
 go

create table HS_BDMH
 (
	MaHocSinh varchar(20) not null,
	MaBangDiemMonHoc varchar(20) not null

	primary key(MaHocSinh, MaBangDiemMonHoc),
	foreign key(MaHocSinh) references HocSinh(MaHocSinh),
	foreign key(MaBangDiemMonHoc) references BangDiemMonHoc(MaBangDiemMonHoc)
 )
 go


 alter table HocSinh
 add MaHanhKiem varchar(20) not null

alter table HocSinh
 add constraint FK_HanhKiemHocSinh
 foreign key (MaHanhKiem) references HanhKiem(MaHanhKiem)
 


alter table HanhKiem
add ThoiGian varchar(20)

alter table HanhKiem
add constraint FK_HanhKiemThoiGian
foreign key (ThoiGian) references NienKhoa(ThoiGian)


alter table HocSinh
add MaLop varchar(20)

alter table HocSinh
add constraint FK_LopHocHocSinh
foreign key (MaLop) references LopHoc(MaLop)








 --1.In ra danh sách học sinh tên 'Ngân'
SELECT * 
FROM HocSinh
where TenHocSinh = 'Ngân'



--2. Cho biết học sinh tên Uyên học những môn học nào
select MonHoc.*
from MonHoc
left join HS_MH On MonHoc.MaMonHoc = HS_MH.MaMonHoc
left join HocSinh On HS_MH.MaHocSinh = HocSinh.MaHocSinh
where HocSinh.TenHocSinh = N'Uyên'




--3. Lập danh sách những học sinh có hạnh kiểm Xuất Sắc
select HocSinh.MaHocSinh, HocSinh.TenHocSinh, HocSinh.Lop, HanhKiem.LoaiHanhKiem
from HanhKiem
right join HocSinh On HanhKiem.MaHanhKiem = HocSinh.MaHanhKiem
where LoaiHanhKiem = N'Xuất Sắc'




--4 .Tìm  giáo viên dạy môn Toán cho cả hai lớp “12A1” và “12A2”
select GiaoVien.* from GiaoVien
left join Day On Day.MaGV = GiaoVien.MaGV
left join MonHoc On MonHoc.MaMonHoc = Day.MaMonHoc
left join DuocDayBoi On DuocDayBoi.MaGV = GiaoVien.MaGV
left join HocSinh On HocSinh.MaHocSinh = DuocDayBoi.MaHocSinh
where MonHoc.TenMonHoc = 'Toán' and (HocSinh.Lop = '12A1' or HocSinh.Lop = '12A2')



--5. Danh sách học sinh học lớp 12A5 năm học 2017-2018
select HocSinh.* from HocSinh
left join LopHoc on LopHoc.MaLop = HocSinh.MaLop
left join NienKhoa on NienKhoa.ThoiGian = LopHoc.ThoiGian
where  NienKhoa.ThoiGian = '2017-2018' and LopHoc.TenLop = '12A5'



--6. Cho biết thông tin thân nhân của học sinh tên Linh
select ThanNhan.* from ThanNhan
left join HocSinh on HocSinh.MaHocSinh = ThanNhan.MaHocSinh
where HocSinh.TenHocSinh ='Linh' 



--7.Lập danh sách các học sinh là nữ thuộc niên khoá 2017-2018
select HocSinh.* from HocSinh
left join LopHoc on HocSinh.MaLop = LopHoc.MaLop
left join NienKhoa on LopHoc.ThoiGian = NienKhoa.ThoiGian
where HocSinh.GioiTinh = N'Nữ' and NienKhoa.ThoiGian='2017-2018'



--8. Lập danh sách sinh viên học rớt các môn học
select * from HocSinh
left join HS_MH on HocSinh.MaHocSinh = HS_MH.MaHocSinh
left join MonHoc on MonHoc.MaMonHoc = HS_MH.MaMonHoc
where MonHoc.KetQua = N'Rớt'



--9. Cho biết danh sách các môn học và số lượng sinh viên tham gia của mỗi lớp trong năm 2017-2018
select MonHoc.MaMonHoc, MonHoc.TenMonHoc, COUNT(HocSinh.MaHocSinh) as [Số Học Sinh] , LopHoc.TenLop
from MonHoc
left join HS_MH on MonHoc.MaMonHoc = HS_MH.MaMonHoc
left join HocSinh on HocSinh.MaHocSinh = HS_MH.MaHocSinh
left join LopHoc on HocSinh.MaLop = LopHoc.MaLop
left join NienKhoa on LopHoc.ThoiGian = NienKhoa.ThoiGian
where HocSinh.Lop = LopHoc.TenLop and NienKhoa.ThoiGian = '2017-2018'
group by MonHoc.MaMonHoc, MonHoc.TenMonHoc, LopHoc.TenLop




--10. Cho biết học sinh có thành tích tốt nhât năm 2018-2019
select top 1 HocSinh.MaHocSinh, HocSinh.TenHocSinh, LopHoc.TenLop, BangDiemMonHoc.DiemTongKet, NienKhoa.ThoiGian
from BangDiemMonHoc
left join HS_BDMH on HS_BDMH.MaBangDiemMonHoc = BangDiemMonHoc.MaBangDiemMonHoc
left join HocSinh on HocSinh.MaHocSinh = HS_BDMH.MaHocSinh
left join LopHoc on HocSinh.MaLop = LopHoc.MaLop
left join NienKhoa on LopHoc.ThoiGian = NienKhoa.ThoiGian
where  NienKhoa.ThoiGian = '2018-2019'
group by HocSinh.MaHocSinh, HocSinh.TenHocSinh, LopHoc.TenLop, BangDiemMonHoc.DiemTongKet, NienKhoa.ThoiGian
order by BangDiemMonHoc.DiemTongKet desc



