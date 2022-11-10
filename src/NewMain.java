
import CLASS.chiTietHoaDon;
import CLASS.hoaDon;
import MODEL.MDChiTietHoaDon;
import MODEL.MDHoaDon;
import java.sql.Connection;
import java.util.ArrayList;
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
        ArrayList<chiTietHoaDon> dataChiTietHoaDon = MDChiTietHoaDon.getChiTietHoaDonTrichKho("TK10112276");
        for (chiTietHoaDon item : dataChiTietHoaDon) {
            System.out.println(item.getTenSanPham());
        }
    }

}
