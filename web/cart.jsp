<%-- 
    Document   : cart
    Created on : Dec 22, 2017, 8:18:10 PM
    Author     : admin
--%>

<%@page import="java.util.Map"%>
<%@page import="Model.Item"%>
<%@page import="Model.Item"%>
<%@page import="Model.Product"%>
<%@page import="dao.ProductDao"%>
<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            ProductDao productDao = new ProductDao();
            Product product = new Product();

        %>
        <h1>Your cart</h1>
        <table>
            <tr>
                <th>Product ID</th>
                <th>Description</th>
                <th>Price</th>
                <th>Total Amount</th>
                <th>&nbsp;</th>
            </tr>
            <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
            <tr>
                <td><%= list.getValue().getProduct().getProductID() %></td>
                <td><%= list.getValue().getProduct().getProductName()%></td>
                <td><%= list.getValue().getProduct().getProductPrice()%></td>
                <td><%= cart.totalCart()%></td>
                <td>
                    <form action="" method="POST">
                        <input type="hidden" name="productID" value="<%= list.getValue().getProduct().getProductID()%>">
                        <input type="hidden" name="command" value="delete">
                        <input type="hidden" name="action" value="removeitem">
                        <input type="submit" value="Remove">
                    </form>
                </td>

            </tr>
            <%}%>
        </table>
    </body>
</html>
