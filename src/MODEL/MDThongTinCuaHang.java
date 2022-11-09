/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODEL;

import CLASS.ThongTinCuaHang;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class MDThongTinCuaHang {

    public  ThongTinCuaHang getThongTin() {
        String sql = "select  * from ThongTinCuaHang";
        ThongTinCuaHang Admin = new ThongTinCuaHang();
        ResultSet rs = HELPER.SQLhelper.executeQuery(sql);
        try {
            while (rs.next()) {
//                Admin.getTenCuaHang();
//                Admin.getDiaChi();
//                Admin.getSoDienThoai();           Khải nhầm xí
//                Admin.getEmail();
//                Admin.getFooterContent();
                Admin = new ThongTinCuaHang(
                        rs.getString("TenCuaHang"),
                        rs.getString("DiaChi"),
                        rs.getString("SoDienThoai"),
                        rs.getString("Email"),
                        rs.getString("FooterContent")
                );
            }
        } catch (Exception e) {
        }
        return Admin;
    }
    
    public static void updateThongTin(ThongTinCuaHang Admin){
        String sql = "Update ThongTinCuaHang set TenCuaHang=?, DiaChi=?, SoDienThoai=?, Email=?, Footercontent=?";
        HELPER.SQLhelper.executeUpdate(sql, 
                Admin.getTenCuaHang(),
                Admin.getDiaChi(),
                Admin.getSoDienThoai(),
                Admin.getEmail(),
                Admin.getFooterContent()
        );
    }
}   

