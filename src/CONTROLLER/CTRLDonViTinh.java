/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CONTROLLER;

import CLASS.donViTinh;
import MODEL.MDDonViTinh;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class CTRLDonViTinh {

    public static void checkAdd(donViTinh item) {
        boolean checkName = false;
        if (item.getName() == "") {
            JOptionPane.showMessageDialog(null, " Tên đơn vị tính không được bỏ trống  ", " lỗi", 1);
            return;
        } else {
            checkName = true;
            MDDonViTinh.add(item);
            JOptionPane.showMessageDialog(null, "Thêm thành công .");
        }
    }

    public static void checkUpdate(donViTinh item) {
        boolean checkName = false;
        if (!item.getName().equals("")) {
            checkName = true;
        }
        if (checkName == true) {
            MDDonViTinh.update(item);
            JOptionPane.showMessageDialog(null, "Cập nhật thành công .");
        } else {
            JOptionPane.showMessageDialog(null, "Chưa nhập tên đơn vị tính !");
        }
    }
}
