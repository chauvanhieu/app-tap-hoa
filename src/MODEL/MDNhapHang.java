/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODEL;

import CLASS.chiTietHoaDon;
import CLASS.hoaDonNhapHang;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class MDNhapHang {

    public static String createID() {
        String id = "NH";
        String date = HELPER.helper.LayNgayString(new Date(), "ddMM");
        Random r = new Random();
        String alphabet = "1234567890";
        String random = "";
        for (int i = 0; i < 4; i++) {
            random += r.nextInt(alphabet.length());
        }
        return id + date + random;
    }

    public static void nhapHang(hoaDonNhapHang hoadon, ArrayList<chiTietHoaDon> data) {
        /*
        B1: tạo mới hóa đơn
        B2: tạo các chi tiết hóa đơn ( trạng thái : 3 )
        B3: Cập nhật số lượng tồn kho
         */
        String sqlTaoHoaDon = "insert into nhatkynhaphang values(?,?,?,?,?,?,?,?)";
        String sqlTaoChiTietHoaDon = "insert into chitiethoadon(idhoadon,idsanpham,soluong,chitiethoadon.giaban,trangthai) values(?,?,?,?,3)";
        String sqlCapNhatSanPham = "update sanpham set soluong = soluong + ? where id = ?";

        HELPER.SQLhelper.executeUpdate(sqlTaoHoaDon,
                hoadon.getId(),
                hoadon.getThoiGian(),
                hoadon.getIdNhanVien(),
                hoadon.getIdNhaCungCap(),
                hoadon.getTongTien(),
                hoadon.getThanhToan(),
                hoadon.getGhiChu(),
                true
        );

        for (chiTietHoaDon item : data) {
            HELPER.SQLhelper.executeUpdate(sqlTaoChiTietHoaDon,
                    hoadon.getId(),
                    item.getIdSanPham(),
                    item.getSoLuongNhapHang(),
                    item.getGiaNhap()
            );
            HELPER.SQLhelper.executeUpdate(sqlCapNhatSanPham, item.getSoLuongNhapHang(), item.getIdSanPham());
        }

    }
}
