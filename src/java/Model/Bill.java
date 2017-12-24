/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Timestamp;

/**
 *
 * @author admin
 */
public class Bill {
    private long billID;
    private long userID;
    private double total;
    private String payment;
    private String address;
    private String phone;
    private double delivery;
    private Timestamp date;

    public Bill() {
    }

    public Bill(long billID, long userID, double total, String payment, String address, String phone, double delivery, Timestamp date) {
        this.billID = billID;
        this.userID = userID;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.phone = phone;
        this.delivery = delivery;
        this.date = date;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getDelivery() {
        return delivery;
    }

    public void setDelivery(double delivery) {
        this.delivery = delivery;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
    


    


}
