<%-- 
    Document   : checkout
    Created on : Dec 22, 2017, 1:28:54 PM
    Author     : admin
--%>

<%@page import="Model.Cart"%>
<%@page import="Model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>

        <%
            Users users = (Users) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/my_project_v.3/login.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="mainContainer">
                <h1 style="text-align: center">Check Out</h1>
                <form action="CheckOutServlet" method="POST">
                    <table style="width: 50%; margin: 0 auto; border: none">
                        <tr>

                            <th><span>Address *</span></th>
                            <td><div class="checkout"><input type="text" name="address"> </div></td>

                        </tr>
                        <tr>
                            <th><span>Phone Number *</span></th>
                            <td><div class="checkout"><input type="text" name="phone"></div></td>
                        </tr>
                        <tr>
                            <th><span>Payment *</span></th>
                            <td><div class="checkout">

                                    <select name="payment">
                                        <option value="Bank Transfer">Bank Transfer</option>
                                        <option value="SHIP COD">Ship COD</option>
                                        <option value="Cash">Cash</option>
                                    </select>
                                </div></td>
                        </tr>
                        <tr>
                            <th><span>Delivery Method: *</span></th>
                            <td>
                                 <div class="checkout">
                                <select name="delivery">
                                <option value="0">Standard</option>
                                <option value="30">In 1 Day</option>
                                <option value="50">In 1 Hours</option>
                                </select>
                                 </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><p>Note: IF CUSTOMERS CHOOSE DELIVERY IN 1 DAY METHOD MUST COST MORE $30 AND $50 FOR 1 HOURS.</p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button type="submit" class="checkout_btn">Order</button></td>
                        </tr>
                            
                 
                    </table>
                </form>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="mb-footer.jsp"></jsp:include>
    </body>
</html>
