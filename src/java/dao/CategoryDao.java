/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.Category;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class CategoryDao {

    public ArrayList<Category> getListCategory() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM category";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getLong("category_id"));
            category.setCategoryName(rs.getString("category_name"));
            list.add(category);

        }
        return list;
    }

    //them moi du lieu
    public boolean insertCategory(Category c) {
        Connection connect = DBConnect.getConnection();
        String sql = "INSERT INTO category VALUES(?,?)";
        try {
            PreparedStatement ps = connect.prepareCall(sql);
            ps.setLong(1, c.getCategoryID());
            ps.setString(2, c.getCategoryName());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    // cap nhat du lieu
    public boolean updateCategory(Category c) {
        Connection conn = DBConnect.getConnection();
        String sql = "UPDATE category  SET category_name = ? WHERE category_id = ?";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setString(1, c.getCategoryName());
            ps.setLong(2, c.getCategoryID());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    //xoa du lieu
    public boolean deleteCategory(long category_id) {
        Connection conn = DBConnect.getConnection();
        String sql = " DELETE  FROM category WHERE category_id = ?";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setLong(1, category_id);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static void main(String[] args) throws SQLException {
        CategoryDao dao = new CategoryDao();
//        for (int i = 8; i < 10; i++) {
//            dao.insertCategory(new Category(i, "Category " + i));
//        }
//       
        System.out.println(dao.deleteCategory(8));
    }
}
