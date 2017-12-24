<%-- 
    Document   : detail
    Created on : Dec 2, 2017, 3:53:53 PM
    Author     : admin
--%>

<%@page import="dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/fotorama.css">
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
                    <span><a href="index.jsp">Home</a></span> / <span><a href="spark.jsp?productID=<%= product.getProductID()%>">Spark</a></span> / <span><a href="#0"><%= product.getProductName()%></a></span>
            </div>
        </div>
        <div class="mainContainer">
            <div class="product_pre_order">
                <div class="product_preview">
                    <div class="fotorama" data-nav="thumbs">
                        <a href="images/spark/spark_1.png"><img src="images/spark/spark_1.png"></a>
                        <a href="images/spark/spark_slider_1.jpg"><img src="images/spark/spark_slider_1.jpg"></a>
                        <a href="images/spark/spark_slider_2.jpg"><img src="images/spark/spark_slider_2.jpg"></a>
                        <a href="images/spark/spark_slider_3.jpg"><img src="images/spark/spark_slider_3.jpg"></a>
                        <a href="images/spark/spark_slider_4.jpg"><img src="images/spark/spark_slider_4.jpg"></a>
                        <a href="images/spark/spark_slider_5.jpg"><img src="images/spark/spark_slider_5.jpg"></a>
                        <a href="images/spark/spark_slider_6.jpg"><img src="images/spark/spark_slider_6.jpg"></a>
                    </div>
                </div>
                <div class="product_order">
                    <section class="product_order_name">
                        <h1 class="product_order_name_h1"><%=product.getProductName()%></h1>
                        <span class="product_order_name_span">USD $<%=product.getProductPrice()%></span>
                        <span class="product_order_name_span discount">USD $<%=product.getProductPrice() + 100%></span><br>
                        <div class="product_price-detail">
                            <div class="product_price-detail-1">
                                <span class="product_price-detail-span">You Saved: </span>
                                <span>USD $100</span>
                            </div>
                            <div class="product_price-detail-2">
                                <span class="product_price-detail-span">Shipping: </span>
                                <span>Free</span>
                            </div>
                            <div class="product_price-detail-3">
                                <Span class="product_price-detail-span">Tax: </Span>
                                <Span>Included</Span>
                            </div>
                        </div>
                    </section>
                    <section class="product_order_name">
                        <div class="info-product-content">
                            <%= product.getProductDescription()%>
                            <br>
                            <br>
                        </div>
                        <div class="info-product-spec">
                            <div class="info-product-spec_list">
                                <div class="style__spec-item">
                                    <div class="style__spec-icon">
                                        <i class="fa fa-battery-full"></i>
                                    </div>
                                    <div class="style__spec-info">
                                        <span>Flght Time</span>
                                        <span>16 MIN</span>
                                    </div>
                                </div>
                            </div>
                            <div class="info-product-spec_list">
                                <div class="style__spec-item">
                                    <div class="style__spec-icon">
                                        <i class="fa fa-camera"></i>
                                    </div>
                                    <div class="style__spec-info">
                                        <span>Effective Pixels</span>
                                        <span>12 MP</span>
                                    </div>
                                </div>
                            </div>
                            <div class="info-product-spec_list">
                                <div class="style__spec-item">
                                    <div class="style__spec-icon">
                                        <i class="fa fa-signal"></i>
                                    </div>
                                    <div class="style__spec-info">
                                        <span>VPS range</span>
                                        <span>30 M</span>
                                    </div>
                                </div>
                            </div>
                            <div class="info-product-spec_list">
                                <div class="style__spec-item">
                                    <div class="style__spec-icon">
                                        <i class="fa fa-tachometer"></i>
                                    </div>
                                    <div class="style__spec-info">
                                        <span>VPS range</span>
                                        <span>50 KM/H</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>
                    <section class="product_order_name">
                        <div class="pay_ment">
                            <a href="CartServlet?command=plus&productID=<%= product.getProductID() %>"><button class="btn_payment">ADD TO CART</button></a>
                            <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=sengphet890%40gmail%2ecom&lc=VN&item_name=<%=product.getProductName()%>&amount=<%=product.getProductPrice()%>&currency_code=USD&button_subtype=services&no_note=1&no_shipping=2&undefined_quantity=1&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted">
                                <button class="btn_payment">QUICK BUY BY PAYPAL</button>
                            </a>
                        </div>
                    </section>
                </div>
            </div>
        </div>

        <div class="showproduct">
            <h2>Spark Recommend</h2>
            <div class="showproduct_sizebar">
                <a href="detail.jsp?productID=2" class="sparklink">
                    <div class="showproduct_img">
                        <img src="images/spark/spark_combo.png" alt="Spark Combo Picture">
                    </div>
                    <div class="spark_info">
                        <h2>Spark fly more combo</h2>
                        <p>Fly farther and faster with a remote controller, an extra battery, and accessories.</p>
                        <span class="price_spark">USD $699</span>
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
        <script src="script/fotorama.js"></script>

    </body>
</html>
