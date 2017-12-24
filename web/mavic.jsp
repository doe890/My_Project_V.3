<%-- 
    Document   : mavic
    Created on : Dec 21, 2017, 3:02:54 PM
    Author     : admin
--%>

<%@page import="Model.Product"%>
<%@page import="dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mavic | DJILAOS</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    </head>
    <body>

        <%
            ProductDao productDao = new ProductDao();
            Product product = new Product();
            String productID = "";
            if (request.getParameter("productID") != null) {
                productID = request.getParameter("productID");
                product = productDao.getProduct(Long.parseLong(productID));
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="mainContainer">
                <div class="shortlink">
                    <span><a href="index.jsp">Home</a></span> / <span><a href="#0"><%= productDao.getProduct(3).getProductName()%></a></span>
                </div>
            </div>
            <div class="mavic-banner">
                <section class="bgbanner">
                    <h1>MAVIC</h1>
                </section>
            </div>
            <div class="showproduct">
                <h1>Mavic</h1>
                <div class="showproduct_sizebar">
                    <a href="detail.jsp?productID=3" class="sparklink">
                    <div class="showproduct_img">
                        <img src="<%= productDao.getProduct(3).getProductImage()%>" alt="<%= productDao.getProduct(3).getProductName()%>">
                    </div>
                    <div class="spark_info">
                        <h2><%= productDao.getProduct(3).getProductName()%></h2>
                        <p><%= productDao.getProduct(3).getProductDescription()%>.</p>
                        <span class="price_spark">USD $<%= productDao.getProduct(4).getProductPrice()%></span>
                    </div>
                </a>
            </div>
            <div class="showproduct_sizebar">
                <a href="detail.jsp?productID=4" class="sparklink">
                    <div class="showproduct_img">
                        <img src="<%= productDao.getProduct(4).getProductImage()%>" alt="S<%= productDao.getProduct(4).getProductName()%>">
                    </div>
                    <div class="spark_info">
                        <h2><%= productDao.getProduct(4).getProductName()%></h2>
                        <p><%= productDao.getProduct(4).getProductDescription()%>.</p>
                        <span class="price_spark">USD $<%= productDao.getProduct(4).getProductPrice()%></span>
                        <span class="price_spark">USD $853</span>
                    </div>
                </a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="mainContainer">
            <h2>Popular Accessories</h2>
            <div class="popular">
                <div class="popular_accessories">
                    <a href="#">
                        <div class="accessories">
                            <div class="img">
                                <img src="images/spark/spark_battery.png" alt="spark battery">
                            </div>
                            <h4>Spark Intelligent Flight Battery</h4>
                            <span>$49</span>
                        </div>
                    </a>
                </div>
                <div class="popular_accessories">
                    <a href="#">
                        <div class="accessories">
                            <div class="img">
                                <img src="images/spark/spark_folding.png" alt="spark folding">
                            </div>
                            <h4>Spark Quick-Release Folding Propellers</h4>
                            <span>$9</span>
                        </div>
                    </a>
                </div>
                <div class="popular_accessories">
                    <a href="#">
                        <div class="accessories">
                            <div class="img">
                                <img src="images/spark/spark_remote.png" alt="spark remote">
                            </div>
                            <h4>Spark Remote Controller</h4>
                            <span>$119</span>
                        </div>
                    </a>
                </div>
                <div class="popular_accessories">
                    <a href="#">
                        <div class="accessories">
                            <div class="img">
                                <img src="images/spark/spark_bag.png" alt="spark HandBag">
                            </div>
                            <h4>Spark Storage Box Carrying Bag</h4>
                            <span>$10</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="mb-footer.jsp"></jsp:include>
    </body>
</html>
