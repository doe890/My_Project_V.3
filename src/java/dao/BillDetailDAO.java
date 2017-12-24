/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.BillDetail;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class BillDetailDAO {
    public void insertBillDetail(BillDetail billDetail) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO billdetail VALUES(?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, billDetail.getBilldetailID());
        ps.setLong(2, billDetail.getBillID());
        ps.setLong(3, billDetail.getProductID());
        ps.setDouble(4, billDetail.getPrice());
        ps.setInt(5, billDetail.getQuantity());
        ps.executeUpdate();
    }
    
    
}
