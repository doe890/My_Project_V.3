/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.Users;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class UsersDao {

    //kiem tra ton tai email
    public boolean checkEmail(String email) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM user WHERE user_email = '" + email + "'";
        PreparedStatement ps;
        try {
            ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    //phuong thuc them tai khoan
    public boolean insertUser(Users u) {
        Connection connect = DBConnect.getConnection();
        String sql = "INSERT INTO user VALUES (?,?,?,?,?)";
        try {
            PreparedStatement ps = connect.prepareCall(sql);
            ps.setLong(1, u.getUserID());
            ps.setString(2, u.getUserName());
            ps.setString(3, u.getUserEmail());
            ps.setString(4, u.getUserpass());
            ps.setBoolean(5, u.isUserRole());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UsersDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    //kiem tra dang nhap
    public Users login(String email, String password) {

        Connection con = DBConnect.getConnection();
        String sql = "SELECT * FROM user WHERE user_email='" + email + "' and user_pass='" + password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Users u = new Users();
                u.setUserID(rs.getLong("user_id"));
                u.setUserName(rs.getString("user_name"));
                u.setUserEmail(rs.getString("user_email"));
                u.setUserpass(rs.getString("user_pass"));
                u.setUserRole(rs.getBoolean("user_role"));
                con.close();
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
