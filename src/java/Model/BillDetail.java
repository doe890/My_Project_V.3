/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author admin
 */
public class BillDetail {
    private long billdetailID;
    private long billID;
    private long productID;
    private double price;
    private int quantity;

    public BillDetail() {
    }

    public BillDetail(long billdetailID, long billID, long productID, double price, int quantity) {
        this.billdetailID = billdetailID;
        this.billID = billID;
        this.productID = productID;
        this.price = price;
        this.quantity = quantity;
    }

    public long getBilldetailID() {
        return billdetailID;
    }

    public void setBilldetailID(long billdetailID) {
        this.billdetailID = billdetailID;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
