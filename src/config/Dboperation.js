const { query } = require('express');
var config = require('./connect_db')
const sql = require('msnodesqlv8')

function getProfile(userId) {
    return new Promise((resolve, reject) => {
        let query = `select * from TaiKhoanDangNhap T where T.MaSo = '${userId}'`
        sql.query(config, query, (err, result) => {
            if (err) {
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function getBankAccount(userId){
    return new Promise((resolve,reject)=>{
        let query = `select * from TaiKhoanNganHang T where T.MaKhachHang = '${userId}'`
        sql.query(config,query,(err,result)=>{
            if(err){
                reject(err);
            }
            else{
                resolve(result);
            }
        })
    })
}

function getOrder(userId){
    return new Promise((resolve,reject)=>{
        let query = `select * from DonHang D where D.MaKhachHang = '${userId}'`
        sql.query(config,query,(err,result)=>{
            if(err){
                reject(err);
            }
            else{
                resolve(result);
            }
        })
    })
}

function getTicketOfOrder(orderId){
    return new Promise((resolve,reject)=>{
        let query = `select * from DonHang D, VeDatMayBay V, ChuyenBay where D.MaDonHang = V.MaDonHang and ChuyenBay.MaSo = V.MaSoChuyenBay and D.MaDonHang = '${orderId}'`
        sql.query(config,query,(err,result)=>{
            if(err){
                reject(err);
            }
            else{
                console.log(result)
                resolve(result);
            }
        })
    })
}
function getPassengerOfTicket(ticketId){
    return new Promise((resolve,reject)=>{
        let query = `select * from NguoiThamGiaChuyenBay where NguoiThamGiaChuyenBay.MaVeMayBay = '${ticketId}'`
        sql.query(config,query,(err,result)=>{
            if(err){
                reject(err);
            }
            else{
                resolve(result);
            }
        })
    })
}

function getAccount(username, role) {
    return new Promise((resolve, reject) => {
        let query;
        if (role === 'user') {
            query = `select * from TaiKhoanDangNhap T, KhachHang K 
            where T.MaSo = K.MaSoTaiKhoan and T.TenDangNhap = '${username}'`
        }
        else {
            query = `select * from TaiKhoanDangNhap T, ChuDichVu C
            where T.MaSo = C.MaSoTaiKhoan and T.TenDangNhap = '${username}'`
        }
        sql.query(config, query, (err, result) => {
            if (err) {
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function getFlight(date, startLoc, desLoc, quantity) {
    return new Promise((resolve, reject) => {
        const query = `exec DanhSachChuyenBayTheoNgay @Date = '${date}', @Start = '${startLoc}', @End = '${desLoc}', @Quantity = ${quantity}`
        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function insertPassenger(HoVaTen, SDT, Email, CCCD, NgaySinh, MaVe, MaChuyenBay, LoaiKhoang) {
    return new Promise((resolve, reject) => {
        const query = `EXEC InsertNguoiThamGiaChuyenBay
        @HoVaTen = '${HoVaTen}',
        @SoDienThoai = '${SDT}',
        @Email = '${Email}',
        @SoCCCD = '${CCCD}',
        @NgaySinh = '${NgaySinh}',
        @MaVeMayBay = '${MaVe}',
        @MaSoMayBay = '${MaChuyenBay}',
        @LoaiKhoang = '${LoaiKhoang}'`
        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function getPassenger(MaVe) {
    return new Promise((resolve, reject) => {
        const query = `select * from NguoiThamGiaChuyenBay N where N.MaVeMayBay = '${MaVe}' `
        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function deletePassenger(MaVe) {
    return new Promise((resolve, reject) => {
        const query = `delete from NguoiThamGiaChuyenBay where NguoiThamGiaChuyenBay.MaVeMayBay = '${MaVe}' `
        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function generateOrder(MaKhachHang) {
    return new Promise((resolve, reject) => {
        let query = `EXEC InsertAndGetAutoKey_DonHang @MaKhachHang = '${MaKhachHang}'`

        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                console.log(result)
                resolve(result);
            }
        })
    })
}

function generateFlightTicket(flightId, orderId) {
    return new Promise((resolve, reject) => {
        let query = `EXEC InsertAndGetAutoKey_VeDatMayBay @MaDonHang = '${orderId}', @MaSoChuyenBay = '${flightId}'`
        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function getRoom(checkInDate, checkOutDate, city) {
    return new Promise((resolve, reject) => {
        let query = `exec TimPhongKhachSan @DateCheckIn = '${checkInDate}', @DateCheckOut = '${checkOutDate}', @City = '${city}'`
        sql.query(config, query, (err, result) => {
            if (err) {
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function generateRoomTicket(orderId) {
    return new Promise((resolve, reject) => {
        query = `EXEC InsertAndGetAutoKey_VeDatPhong @MaDonHang = '${orderId}'`

        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}

function getRevenue(providerId, airline, year) {
    return new Promise((resolve, reject) => {
        const query = `select * from ThongKeDoanhThu12Thang('${providerId}','${airline}','${year}')`

        sql.query(config, query, (err, result) => {
            if (err) {
                console.log(err);
                reject(err);
            }
            else {
                resolve(result);
            }
        })
    })
}


module.exports = {
    getProfile: getProfile,
    getBankAccount: getBankAccount,
    getAccount: getAccount,
    getOrder: getOrder,
    getTicketOfOrder: getTicketOfOrder,
    getPassengerOfTicket: getPassengerOfTicket,
    getFlight: getFlight,
    insertPassenger: insertPassenger,
    getPassenger: getPassenger,
    deletePassenger: deletePassenger,
    generateFlightTicket: generateFlightTicket,
    generateOrder: generateOrder,
    getRoom: getRoom,
    generateRoomTicket: generateRoomTicket,
    getRevenue: getRevenue
}