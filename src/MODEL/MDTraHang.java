package MODEL;

import CLASS.chiTietHoaDon;
import CLASS.hoaDonTraHang;
import java.util.ArrayList;
import java.util.Date;
import java.sql.ResultSet;
import java.util.Random;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class MDTraHang {

    public static String createID() {
        String id = "TH";
        String date = HELPER.helper.LayNgayString(new Date(), "ddMM");
        Random r = new Random();
        String alphabet = "1234567890";
        String random = "";
        for (int i = 0; i < 4; i++) {
            random += r.nextInt(alphabet.length());
        }
        return id + date + random;
    }

    public static void traHang(hoaDonTraHang hoadon, ArrayList<chiTietHoaDon> data) {

        /*
        Hình thức == 0 thì trả tiền mặt k cần trừ công nợ;
        Hình thức == 1 thì trừ tiền vào công nợ;
        
        Tạo hóa đơn
        Cập nhật chi tiết hóa đơn
        trừ tồn kho
        Cập nhật nợ nhà cung cấp
         */
        String sqlTaoHoaDon = "insert into nhatkytrahangncc values(?,?,?,?,?,?,?,?)";
        String sqlChiTietHoaDon = "insert into chitiethoadon(idhoadon,idsanpham,soluong,chitiethoadon.giaban,trangthai) values(?,?,?,?,4)";
        String sqlTruTonKho = "update sanpham set soluong = soluong - ? where id = ?";
        String sqlCapNhatCongNo = "update nhacungcap set congno = congno - ? where id = ?";

        HELPER.SQLhelper.executeUpdate(sqlTaoHoaDon,
                hoadon.getId(),
                hoadon.getThoiGian(),
                hoadon.getIdNhanVien(),
                hoadon.getIdNhaCungCap(),
                hoadon.getTongTien(),
                hoadon.getHinhThuc(),
                hoadon.getGhiChu(),
                1
        );
        if (hoadon.getHinhThuc() == 1) {
            HELPER.SQLhelper.executeUpdate(sqlCapNhatCongNo, hoadon.getTongTien(), hoadon.getIdNhaCungCap());
        }
        for (chiTietHoaDon item : data) {
            HELPER.SQLhelper.executeUpdate(sqlChiTietHoaDon,
                    hoadon.getId(),
                    item.getIdSanPham(),
                    item.getSoLuongTraHang(),
                    item.getGiaNhap()
            );
            HELPER.SQLhelper.executeUpdate(sqlTruTonKho, item.getSoLuongTraHang(), item.getIdSanPham());
        }
    }

    public static void loadTable(JTable table) {
        String sql = "select nhatkytrahangncc.id as 'id', nhatkytrahangncc.ThoiGian as 'thoigian',nhanvien.name as 'nhanvien',\n"
                + " nhacungcap.name as 'nhacungcap',nhatkytrahangncc.TongTien as 'tongtien',nhatkytrahangncc.GhiChu as 'ghichu'\n"
                + " ,nhatkytrahangncc.TrangThai as 'trangthai', nhatkytrahangncc.hinhthuc as 'hinhthuc' from nhatkytrahangncc \n"
                + " join nhanvien on nhanvien.id=nhatkytrahangncc.IDnhanvien\n"
                + " join nhacungcap on nhacungcap.id=nhatkytrahangncc.IDncc\n"
                + " ORDER by  nhatkytrahangncc.thoigian DESC\n"
                + " limit 50";
        DefaultTableModel model = (DefaultTableModel) table.getModel();
        model.setRowCount(0);
        ResultSet rs = HELPER.SQLhelper.executeQuery(sql);
        try {
            while (rs.next()) {
                model.addRow(new Object[]{
                    rs.getString("id"),
                    rs.getString("thoigian"),
                    rs.getString("nhanvien"),
                    rs.getString("nhacungcap"),
                    HELPER.helper.LongToString(rs.getLong("tongtien")),
                    rs.getInt("hinhthuc") == 1 ? "Trừ công nợ" : "Tiền mặt",
                    rs.getString("ghichu"),
                    rs.getInt("trangthai") == 1 ? true : false
                });
            }
        } catch (Exception e) {
        }
        table.setModel(model);
    }

}
