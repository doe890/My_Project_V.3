<%-- 
    Document   : product_manager
    Created on : Dec 23, 2017, 11:30:55 PM
    Author     : admin
--%>

<%@page import="Model.Category"%>
<%@page import="Model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Manager</title>
        <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
            <%
                ProductDao productDao = new ProductDao();
                Category category = new Category();
                
                ArrayList <Product>  list = productDao.getListProductByCategory(1002);
            %>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>
                <div id="rightContent">
                    <h3>Product Manager</h3>
                    <a href="${root}/admin/insert_product.jsp">Add More Product</a>
                    <table class="data">
                        <tr class="data">
                        <th class="data" width="30px">No </th>
                        <th class="data">Product ID</th>
                        <th class="data">Name</th>
                        <th class="data">Price</th>
                        <th class="data">Description</th>
                        <th class="data" width="90px">Option</th>
                     </tr>
                     <%
                         int count = 0;
                         for(Product product : list) {
                             count ++;
                     %>
                        <tr class="data">
                            <td class="data" width="30px"><%= count %></td>
                            <td class="data"><%= product.getProductID() %></td>
                            <td class="data"><%= product.getProductName()%></td>
                            <td class="data"><%= product.getProductPrice()%></td>
                            <td class="data"><%= product.getProductDescription()%></td>
                            <td class="data" width="75px">
                        <center>
                            <a href="#">Edit</a>&nbsp;|&nbsp;
                            <a href="/my_project_v.3/ManageCategoryServlet?command=delete&category_id=<%= category.getCategoryID() %>">Delete</a>
                        </center>
                        </td>
                        </tr>
                       <%}%>
                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>

    </body>
</html>
