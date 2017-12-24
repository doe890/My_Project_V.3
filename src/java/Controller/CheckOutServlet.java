/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Bill;
import Model.BillDetail;
import Model.Cart;
import Model.Item;
import Model.Users;
import Tools.SendMail;
import dao.BillDAO;
import dao.BillDetailDAO;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class CheckOutServlet extends HttpServlet {

    private final BillDAO billDAO = new BillDAO();
    private final BillDetailDAO billDetailDAO = new BillDetailDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String payment = request.getParameter("payment");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String deliveryString = request.getParameter("delivery");
        
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Users users = (Users) session.getAttribute("user");
        try {
            double delivery;
            delivery = Double.parseDouble(deliveryString);
            long ID = new Date().getTime();
            Bill bill = new Bill();
            bill.setBillID(ID);
            bill.setAddress(address);   
            bill.setPhone(phone);
            bill.setDelivery(delivery);
            bill.setPayment(payment);
            bill.setUserID(users.getUserID());
            bill.setDate(new Timestamp(new Date().getTime()));
            bill.setTotal(cart.totalCart()+delivery);
            session.setAttribute("bill", bill);
            billDAO.insertBill(bill);
            for(Map.Entry<Long, Item> list : cart.getCartItems().entrySet()){
               billDetailDAO.insertBillDetail(new BillDetail(0, ID, 
                       list.getValue().getProduct().getProductID(), 
                       list.getValue().getProduct().getProductPrice(), 
                       list.getValue().getQuantity()));
            }
            SendMail sm = new SendMail();
            sm.sendMail(users.getUserEmail(), "DJI LAOS", "Hello, "+users.getUserEmail()+"\n Your Total: $"+cart.totalCart()+"and Delivery amount "+delivery+" included");
            
        } catch (Exception e) {
           
        }
        response.sendRedirect("/my_project_v.3/success.jsp");
//        request.getSession().removeAttribute("cart");
    }

}
