/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.Bill;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class BillDAO {
    public void insertBill(Bill bill) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO bill VALUES(?,?,?,?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bill.getBillID());
        ps.setLong(2, bill.getUserID());
        ps.setDouble(3, bill.getTotal());
        ps.setString(4, bill.getPayment());
        ps.setString(5, bill.getAddress());
        ps.setString(6, bill.getPhone());
        ps.setDouble(7, bill.getDelivery());
        ps.setTimestamp(8, bill.getDate());
        
        ps.executeUpdate();
    }
    
    public ArrayList<Bill> getListBill(){
        try {
            Connection conn = DBConnect.getConnection();
            String sql = "SELECT * FROM bill";
            PreparedStatement ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> list = new ArrayList<>();
            while(rs.next()){
                Bill b = new Bill();
                b.setBillID(rs.getLong("bill_id"));
                b.setUserID(rs.getLong("user_id"));
                b.setTotal(rs.getDouble("total"));
                b.setPayment(rs.getString("payment"));
                b.setAddress(rs.getString("address"));
                b.setPhone(rs.getString("phone"));
                b.setDelivery(rs.getDouble("delivery"));
                b.setDate(rs.getTimestamp("date"));
                list.add(b);
                return list;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
    public static void main(String[] args) throws SQLException {
        
        new BillDAO().insertBill(new Bill(1, 2, 0, "ss", "ff", "01234", 10, new Timestamp(new Date().getTime())));
       
    }
}
