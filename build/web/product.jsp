<%-- 
    Document   : product
    Created on : Dec 2, 2017, 1:47:18 PM
    Author     : admin
--%>

<%@page import="Model.Cart"%>
<%@page import="Model.Product"%>
<%@page import="dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="mainContainer">
                <div class="space"></div>
            </div>
        <%
            ProductDao productDao = new ProductDao();
            String category_id = "";
            if (request.getParameter("categoryID") != null) {
                category_id = request.getParameter("categoryID");
            }
            Cart cart  = (Cart) session.getAttribute("cart");
            if(cart == null){
                cart = new Cart();
                session.setAttribute("cart", cart);
            }

        %>
        <div class="mainContainer">
            <div class="mainproduct">
                <%
                    for (Product p : productDao.getListProductByCategory(Long.parseLong(category_id))) {
                %>
                <section class="product8">
                    <a href="detail.jsp?productID=<%=p.getProductID()%>">
                        <div class="pic">
                            <img src="<%=p.getProductImage()%>" alt="<%=p.getProductName()%>">
                        </div>
                        <div class="productinfo">
                            <span class="namepd"><%=p.getProductName()%></span>
                            <span class="pricepd">USD&nbsp;<%= p.getProductPrice()%></span>
                            <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>"><span class="addtocart">ADD TO CART</span></a>
                        </div>
                    </a>
                </section>
                <%
                    }
                %>
                <div class="clearfix"></div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
