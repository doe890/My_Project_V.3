

<%@page import="java.util.Map"%>
<%@page import="Model.Item"%>
<%@page import="Model.Bill"%>
<%@page import="Model.Users"%>
<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Infomation</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
    </head>
    <body>
        
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            Users users = (Users) session.getAttribute("user");
            Bill bill = (Bill) session.getAttribute("bill");
        %>
        
            <h1 style="text-align: center">Your Order</h1>
            <div class="mainContainer">
                <div class="customerinfo">
                    <h4>Customer Name:&nbsp;&nbsp;<%= users.getUserName() %></h4>
                    <h4>Email:&nbsp;&nbsp; <%= users.getUserEmail() %></h4>
                    <h4>Phone:&nbsp;&nbsp;<%= bill.getPhone() %></h4>
                    <h4>Address:&nbsp;&nbsp;<%= bill.getAddress() %></h4>
                    <h4>Payment:&nbsp;&nbsp;<%= bill.getPayment()%></h4>
                    <h2>Bill</h2>
                </div>
                <div class="bill-table">
                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Orders</th>
                            <th>Amount</th>
                        </tr>
                        <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                        <tr>
                            <td><%= list.getValue().getProduct().getProductName() %></td>
                            <td id="checkorder"><img src="<%= list.getValue().getProduct().getProductImage() %>"></td>
                            <td><%= list.getValue().getQuantity()%></td>
                            <td>X <%= list.getValue().getProduct().getProductPrice() %></td>

                        </tr>
                        <%}%>
                       <tr>
                           <td colspan="2"></td>
                           <td>Total: </td>
                           <td><%= cart.totalCart() %></td>
                       </tr>
                    </table>
                </div>
                
            </div>
                     <%request.getSession().removeAttribute("cart"); %>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
