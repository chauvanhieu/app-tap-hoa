
import CLASS.hoaDon;
import MODEL.MDHoaDon;
import java.sql.Connection;
import java.util.Date;
import java.util.Hashtable;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JasperViewer;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
/**
 *
 * @author Admin
 */
public class NewMain {

    public static void main(String[] args) {
        hoaDon hoaDon = MDHoaDon.getHoaDon("HD04110353");
        try {
            Hashtable map = new Hashtable();
            JasperReport jasper = JasperCompileManager.compileReport("src/REPORT/hoaDonBanHang.jrxml");
            map.put("tenCuaHang", "Tạp hóa FPOLY MARKET");
            map.put("diaChiCuaHang", "317 Phan Bội Châu, TP.BMT");
            map.put("idHoaDon", hoaDon.getId());
            map.put("soDienThoaiCuaHang", "0909 79 79 79");
            map.put("soTienGiamGia", HELPER.helper.SoString(hoaDon.getGiamGia()) + " đ");
            map.put("soTienThanhToan", HELPER.helper.SoString(hoaDon.getTongTien()) + " đ");
            map.put("tenNhanVien", hoaDon.getIdNhanVien());
            map.put("tenKhachHang", hoaDon.getIdKhachHang());
            map.put("thoiGian", hoaDon.getThoiGian());

            Connection con = HELPER.SQLhelper.getConnection();
            JasperPrint printer = JasperFillManager.fillReport(jasper, map, con);
            JasperViewer.viewReport(printer, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
