package CONTROLLER;

import MODEL.MDAccount;
import src.CLASS.Account;

import javax.swing.JOptionPane;

public class CTRLAccount {

    public static void checkAddAccount(Account acc) {
        boolean checkuser = false;
        boolean checkpass = false;

        checkuser = HELPER.helper.isUsername(acc.getUsername());
        checkpass = HELPER.helper.isPassword(acc.getPassword());
        if (checkuser == false) {
            JOptionPane.showMessageDialog(null, "Tên đăng nhập ít nhất 5 kí tự !");
            return;
        }
        if (checkpass == false) {
            JOptionPane.showMessageDialog(null, "Mật khẩu cần có 1 chữ viết in hoa và ít nhất 1 kí tự đặc biết !");
            return;
        }
        if (checkpass == true && checkpass == true) {
            MDAccount.add(acc);
            JOptionPane.showMessageDialog(null, "Đã thêm thành công !");
        }
    }

    public static void checkUpdate(Account acc) {
        boolean checkuser = false;
        boolean checkpass = false;

        checkuser = HELPER.helper.isUsername(acc.getUsername());
        checkpass = HELPER.helper.isPassword(acc.getPassword());
        if (checkuser == false) {
            JOptionPane.showMessageDialog(null, "Tên đăng nhập ít nhất 5 kí tự !");
            return;
        }
        if (checkpass == false) {
            JOptionPane.showMessageDialog(null, "Mật khẩu cần có 1 chữ viết in hoa và ít nhất 1 kí tự đặc biết !");
            return;
        }
        if (checkpass == true && checkpass == true) {
            MDAccount.updateAccount(acc);
            JOptionPane.showMessageDialog(null, "Cập nhật thành công !");
        }

    }
}
