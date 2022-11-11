
import CLASS.chiTietHoaDon;
import CLASS.hoaDonNhapHang;
import MODEL.MDChiTietHoaDon;
import MODEL.MDNhapHang;
import java.util.ArrayList;

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
        ArrayList<chiTietHoaDon> data = MDChiTietHoaDon.getChiTietHoaDonNhapHang("NH11115724");
        for (chiTietHoaDon item : data) {
            System.out.println(item.getGiaNhap());
        }

    }

}
