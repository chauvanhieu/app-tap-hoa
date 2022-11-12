
import CLASS.hoaDonTraHang;
import MODEL.MDTraHang;

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
        hoaDonTraHang hoadon = MDTraHang.getHoaDon("TH12111799");
        System.out.println(hoadon.getIdNhaCungCap());

    }

}
