-- :)) nhap dữ liệu phải ghi lại câu insert chán quá
-- Dữ liệu cho bảng TaiKhoanDangNhap
INSERT INTO TaiKhoanDangNhap(Ho,TenDem,Ten,NgaySinh,GioiTinh,SoCCCD,UserName,MatKhau) VALUES
( 'Nguyen', 'Van', 'A', '1990-01-15', 'M', '123456789082','nva','nva123');
INSERT INTO TaiKhoanDangNhap(Ho,TenDem,Ten,NgaySinh,GioiTinh,SoCCCD,UserName,MatKhau) VALUES
( 'Nguyen', 'Van', 'B', '2026-01-15', 'M', '456789555555','nvb','nvb123');
INSERT INTO TaiKhoanDangNhap(Ho,TenDem,Ten,NgaySinh,GioiTinh,SoCCCD,UserName,MatKhau) VALUES
( 'Nguyen', 'Van', 'C', '1980-01-15', 'M', '123444444444','nvc','nvc123');
INSERT INTO TaiKhoanDangNhap(Ho,TenDem,Ten,NgaySinh,GioiTinh,SoCCCD,UserName,MatKhau) VALUES
( 'Nguyen', 'Van', 'D', '1975-01-15', 'M', '123455555555','nvd','nvd123');
INSERT INTO TaiKhoanDangNhap(Ho,TenDem,Ten,NgaySinh,GioiTinh,SoCCCD,UserName,MatKhau) VALUES
( 'Nguyen', 'Van', 'E', '1980-02-15', 'M', '123456666666','nve','nvd123');


select * from TaiKhoanDangNhap

INSERT INTO SoDienThoai (MaSoTaiKhoan, SoDienThoai) VALUES
('TK001', '0901234567');
INSERT INTO SoDienThoai (MaSoTaiKhoan, SoDienThoai) VALUES
('TK002', '0901234567');
INSERT INTO SoDienThoai (MaSoTaiKhoan, SoDienThoai) VALUES
('TK003', '1234567891');
INSERT INTO SoDienThoai (MaSoTaiKhoan, SoDienThoai) VALUES
('TK004', '0914758723');
INSERT INTO SoDienThoai (MaSoTaiKhoan, SoDienThoai) VALUES
('TK005', '0914748951');

select * from SoDienThoai

INSERT INTO Email (MaSoTaiKhoan, Email) VALUES
('TK001', 'asd@gmail.com');
INSERT INTO Email (MaSoTaiKhoan, Email) VALUES
('TK002', '123@gmail.com');
INSERT INTO Email (MaSoTaiKhoan, Email) VALUES
('TK002', 'asdsa@gmail.com');
INSERT INTO Email (MaSoTaiKhoan, Email) VALUES
('TK003', 'whoisyourdaddy@gmail.com');
INSERT INTO Email (MaSoTaiKhoan, Email) VALUES
('TK004', 'tk04@gmail.com');
INSERT INTO Email (MaSoTaiKhoan, Email) VALUES
('TK005', 'tk05@gmail.com');
select * from Email

INSERT INTO ChuDichVu (MaSoTaiKhoan)
VALUES
  ('TK003');
INSERT INTO ChuDichVu (MaSoTaiKhoan)
VALUES
  ('TK004');
INSERT INTO ChuDichVu (MaSoTaiKhoan)
VALUES
  ('TK005');

select * from ChuDichVu

INSERT INTO NhanVien (MaSoTaiKhoan, ThoiGianLamViec, NgayBatDauLam, MaNhanVienQuanLy)
VALUES
  ('TK002', '09:30:00', '2021-12-05', NULL);

select * from NhanVien

INSERT INTO KhachHang (MaSoTaiKhoan, CapBac)
VALUES
  ('TK001', 'VIP');
INSERT INTO KhachHang (MaSoTaiKhoan, CapBac)
Values
  ('TK002', 'Regular');
INSERT INTO KhachHang (MaSoTaiKhoan, CapBac)
values
  ('TK003', 'Regular');

select * from KhachHang

INSERT INTO TaiKhoanNganHang (SoTaiKhoan, TenNganHang, MaKhachHang,TrangThai)
VALUES
  ('1234567890', 'ACB', 'TK001','Xác nhận');
INSERT INTO TaiKhoanNganHang (SoTaiKhoan, TenNganHang, MaKhachHang,TrangThai)
values
  ('9876543210', 'Vietcombank', 'TK002','Xác nhận');
INSERT INTO TaiKhoanNganHang (SoTaiKhoan, TenNganHang, MaKhachHang,TrangThai)
values
  ('1234567891', 'Vietcombank', 'TK003','Chưa Xác nhận');

select * from TaiKhoanNganHang

INSERT INTO DonHang ( TinhTrangDonHang, HinhThucThanhToan, MaKhachHang, NgayGiaoDich, TaiKhoanNganHang, MaNhanVienHoTro)
VALUES
  ( 'Chưa thanh toán', 'Cash', 'TK001', '2023-02-15', '1234567890', 'TK002');

select * from DonHang

INSERT INTO NhaCungCapDichVu (MaChuDichVu, LoaiDichVu)
VALUES
  ('TK003', 'Flight Booking');
INSERT INTO NhaCungCapDichVu (MaChuDichVu, LoaiDichVu)
VALUES
  ('TK004', 'Hotel Booking');
INSERT INTO NhaCungCapDichVu (MaChuDichVu, LoaiDichVu)
VALUES
  ('TK005', 'Restaurent Booking');

select * from NhaCungCapDichVu

INSERT INTO HangHangKhong (MaSoThue, TenHang, MoTa, SoDienThoaiTuVanVien, MaDichVu)
VALUES
  ('H001', 'Vietnam Airlines', 'National Flag Carrier', '0909876543', 'DV001');
INSERT INTO HangHangKhong (MaSoThue, TenHang, MoTa, SoDienThoaiTuVanVien, MaDichVu) values
  ('H002', 'AirAsia', 'Low-cost Carrier', '0912345678', 'DV001');

select * from HangHangKhong

INSERT INTO ChuyenBay ( Ngay, ThoiGianXuatPhat, ThoiGianHaCanh, DiaDiemXuatPhat, DiaDiemHaCanh, MaSoThueCuaHangHangKhong)
VALUES
  ( '2023-03-01', '2023-03-01 08:00:00', '2023-03-01 10:00:00', 'Hanoi', 'Ho Chi Minh City', 'H001');

INSERT INTO ChuyenBay ( Ngay, ThoiGianXuatPhat, ThoiGianHaCanh, DiaDiemXuatPhat, DiaDiemHaCanh, MaSoThueCuaHangHangKhong)
VALUES
  ( '2023-03-02', '2023-03-02 12:00:00', '2023-03-02 14:00:00', 'Ho Chi Minh City', 'Hanoi', 'H002');

delete from ChuyenBay
select * from ChuyenBay
select count(*) from ChuyenBay


INSERT INTO KhoangTrenChuyenBay (MaSoMayBay, LoaiKhoang, GiaKhoang, SoLuongGheToiDaCungCap, MoTa)
VALUES
  ('CB001', 'Business', 2000000, 20,'Spacious seats with premium services'),
  ('CB001', 'Economy', 800000, 150, 'Standard seating with in-flight entertainment'),
  ('CB002', 'Business', 1800000, 18, 'Comfortable seats with extra legroom'), 
  ('CB002', 'Economy', 700000, 160, 'Affordable seating for budget travelers');

select * from KhoangTrenChuyenBay


INSERT INTO KhachSan ( MaSoThue , TenKhachSan , DiaChi , ThanhPho , SoDienThoaiLeTan , MaDichVu )
VALUES
	('K001' , 'Royal'  , '70 Phan Boi Chau' , 'TPHCM' , '0901100011' , 'DV002' ),
	('K002' , 'Capital'  , '85 Nguyen Trai' , 'TPHCM' , '0901200012' , 'DV002' ),
	('K003' , 'Country'  , '90 Ta Quang Buu' , 'TPHCM' , '0901300013' , 'DV002' );

select * from KhachSan

INSERT INTO Phong ( MaSoThueKhachSan , LoaiPhong , Ngay , SoLuongCungCap , MoTa , GiaPhong )
VALUES

	( 'K001' , 'Normal - 2 person' , '2024-01-01' , 10 , 'Affordable price, full amenities' , 1000000 ),
	( 'K001' , 'VIP - 2 person' , '2024-01-01' , 10 , 'Full service, full amenities' , 2000000 ),
	( 'K002' , 'Normal - 4 person' , '2024-01-01' , 10 , 'Affordable price, full service' , 800000 ),
	( 'K002' , 'VIP - 2 person' , '2024-01-01' , 10 , 'Restaurant, swimming pool , soccer field available' , 1500000 ),
	( 'K003' , 'VIP - 2 person' , '2024-01-01' , 10 , 'Affordable price, full amenities' , 1200000 );

select * from Phong

INSERT INTO NhaHang( MaSoThue , TenNhaHang , DiaChi , MoTa , SoDienThoaiQuanLy , MaDichVu )
VALUES

	('N001' , 'Paris'  , '10 To Huu' , 'Focus on service French cuisine' , '0901100001' , 'DV003' ),
	('N002' , 'Italia'  , '20 Tran Hung Dao' , 'Focus on service Italian cuisine' , '0901200002' , 'DV003' ),
	('N003' , 'Viet'  , '30 Nam Ki Khoi Nghia' , 'Focus on service Vietnamese cuisine' , '0901300003' , 'DV003' );

select * from NhaHang

INSERT INTO Ban( MaSoThueNhaHang , LoaiBan , ThoiGian , SoLuongCungCap , SoLuongNguoiToiDa1Ban , MoTa , Gia )
VALUES

	( 'N001' , 'Party' , '2024-01-01' , 3 , 10 , 'Available for another country cuisine' , 1000000 ),
	( 'N002' , 'Party' , '2024-01-01' , 3 , 10 , 'Full service' , 2000000 ),
	( 'N002' , 'Regular' , '2024-01-01' , 7 , 4 , 'Affordable price, full service' , 700000 ),
	( 'N003' , 'Party' , '2024-01-01' , 10 , 2 , 'Piano, violin performance' , 1000000 ),
	( 'N003' , 'Regular' , '2024-01-01' , 5 , 5 , 'Affordable price, full service' , 800000 );

select * from Ban

INSERT INTO VeDatMayBay (MaDonHang, MaSoChuyenBay)
VALUES
  ( 'DH001', 'CB001');

select * from VeDatMayBay
delete from VeDatMayBay

INSERT INTO NguoiThamGiaChuyenBay ( HoVaTen, SoDienThoai, Email, SoCCCD, NgaySinh, MaVeMayBay, MaSoMayBay, LoaiKhoang)
VALUES
  ( 'Tran Thi B', '0987654321', 'tranb@yahoo.com', '987654321098', '1988-10-20', 'V001', 'CB001', 'Business');
INSERT INTO NguoiThamGiaChuyenBay ( HoVaTen, SoDienThoai, Email, SoCCCD, NgaySinh, MaVeMayBay, MaSoMayBay, LoaiKhoang) values
  ( 'Tran Thi C', '0987654321', 'tranc@ gmail.com', '987654321099', '1988-10-20', 'V001', 'CB001', 'Business');
INSERT INTO NguoiThamGiaChuyenBay ( HoVaTen, SoDienThoai, Email, SoCCCD, NgaySinh, MaVeMayBay, MaSoMayBay, LoaiKhoang) values
  ( 'Tran Thi D', '0987654321', 'trand@ gmail.com', '987654321100', '1988-10-20', 'V001', 'CB001', 'Business');
INSERT INTO NguoiThamGiaChuyenBay ( HoVaTen, SoDienThoai, Email, SoCCCD, NgaySinh, MaVeMayBay, MaSoMayBay, LoaiKhoang) values
  ( 'Tran Thi E', '0987654321', 'trane@ gmail.com', '987654321101', '1988-10-20', 'V001', 'CB001', 'Business');
INSERT INTO NguoiThamGiaChuyenBay ( HoVaTen, SoDienThoai, Email, SoCCCD, NgaySinh, MaVeMayBay, MaSoMayBay, LoaiKhoang) values
  ( 'Tran Thi F', '0987654321', 'tranf@ gmail.com', '987654321102', '1988-10-20', 'V001', 'CB001', 'Business');
INSERT INTO NguoiThamGiaChuyenBay ( HoVaTen, SoDienThoai, Email, SoCCCD, NgaySinh, MaVeMayBay, MaSoMayBay, LoaiKhoang) values
  ( 'Tran Thi G', '0987654321', 'trang@ gmail.com', '987654321103', '1988-10-20', 'V001', 'CB001', 'Business');


select * from TaiKhoanDangNhap
select * from SoDienThoai
select * from Email
select * from ChuDichVu
select * from NhanVien
select * from KhachHang
select * from TaiKhoanNganHang
select * from DonHang
select * from NhaCungCapDichVu
select * from HangHangKhong
select * from ChuyenBay
select * from KhoangTrenChuyenBay
select * from VeDatMayBay
select * from NguoiThamGiaChuyenBay


delete from NguoiThamGiaChuyenBay
