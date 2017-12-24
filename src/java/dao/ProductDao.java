/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.Product;
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
public class ProductDao {

    //get danh sach san pham dua vao ma danh muc
    public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM products WHERE category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

    //hien thi chi tiet  san pham
    public Product getProduct(long productID) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM products WHERE product_id = '" + productID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));

        }
        return product;
    }

    //them moi san pham
    public boolean insertProduct(Product p) {
        Connection connect = DBConnect.getConnection();
        String sql = "INSERT INTO products VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connect.prepareCall(sql);
            ps.setLong(1, p.getProductID());
            ps.setLong(2, p.getCategoryID());
            ps.setString(3, p.getProductName());
            ps.setString(4, p.getProductImage());
            ps.setDouble(5, p.getProductPrice());
            ps.setString(6, p.getProductDescription());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //cap nhat san pham
    public boolean updateProduct(Product p) {
        Connection connect = DBConnect.getConnection();
        String sql = "UPDATE products SET category_id = ? , product_name = ? , product_image = ? , product_price = ? , product_description = ? WHERE product_id = ? ";
        try {
            PreparedStatement ps = connect.prepareCall(sql);
            ps.setLong(1, p.getProductID());
            ps.setLong(2, p.getCategoryID());
            ps.setString(3, p.getProductName());
            ps.setString(4, p.getProductImage());
            ps.setDouble(5, p.getProductPrice());
            ps.setString(6, p.getProductDescription());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    //xoa san pham
    public boolean deleteProduct(long product_id) {
        Connection conn = DBConnect.getConnection();
        String sql = "DELETE FROM products WHERE product_id = ?";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setLong(1, product_id);
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }

    public static void main(String[] args) throws SQLException {
        ProductDao dao = new ProductDao();
//        for(int i=11; i<=13 ; i++){
//            dao.insertProduct(new Product(i, i, "Prcoduct "+i, "Pimage", i, "productDescription"));
//        }
        System.out.println(dao.updateProduct(new Product(12, 14, "productName", "productName", 0, "productDescription")));

    }
}
