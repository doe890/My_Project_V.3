<%-- 
    Document   : content
    Created on : Nov 29, 2017, 3:56:59 PM
    Author     : Hacker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content</title>
        <script type="text/javascript" src="script/myScript.js"></script>
    </head>
    <body>

        <div class="mainContainer">
            <div class="slider autoplay">
                <div class="prohot">
                    <article class="Item">
                        <a href="spark.jsp" class="Item_url">
                            <figure class="cover_bg">
                                <img src="images/hero-spark.jpg" alt="hero_spark">
                                <figure class="cover">
                                    <img src="images/spark.png" alt="spark">
                                </figure>
                            </figure>
                            <section class="Item_section">
                                <div class="Item_section_info">
                                    <h2 class="h2 spark"></h2>
                                    <div class="Item_spec sspec"></div>
                                    <div class="Item_section_des sdesc"></div>
                                    <div class="Item_price sprice"></div>
                                </div>
                            </section>
                        </a>
                    </article>
                </div>
                <div class="prohot">
                    <article class="Item">
                        <a href="mavic.jsp" class="Item_url">
                            <figure class="cover_bg">
                                <img src="images/hero-mavic-pro.jpg" alt="mavic pro">
                                <figure class="cover">
                                    <img src="images/mavic.png" alt="mavic pro">
                                </figure>
                            </figure>
                            <section class="Item_section">
                                <div class="Item_section_info">
                                    <h2 class="h2 mavic"></h2>
                                    <div class="Item_spec mspec"></div>
                                    <div class="Item_section_des mdesc"></div>
                                    <div class="Item_price mprice"></div>
                                </div>
                            </section>
                        </a>
                    </article>
                </div>
                <div class="prohot">
                    <article class="Item">
                        <a href="#" class="Item_url">
                            <figure class="cover_bg">
                                <img src="images/hero-p4p.jpg" alt="phantom 4 pro">
                                <figure class="cover">
                                    <img src="images/P4.png" alt="P4P">
                                </figure>
                            </figure>
                            <section class="Item_section">
                                <div class="Item_section_info">
                                    <h2 class="h2 phantom"></h2>
                                    <div class="Item_spec pspec"></div>
                                    <div class="Item_section_des pdesc"></div>
                                    <div class="Item_price pprice"></div>
                                </div>
                            </section>
                        </a>
                    </article>
                </div>
                <div class="prohot">
                    <article class="Item">
                        <a href="#" class="Item_url">
                            <figure class="cover_bg">
                                <img src="images/hero-mavic-pro.jpg" alt="mavic pro">
                                <figure class="cover">
                                    <img src="images/mavic.png" alt="mavic pro">
                                </figure>
                            </figure>
                            <section class="Item_section">
                                <div class="Item_section_info">
                                    <h2 class="h2 mavic"></h2>
                                    <div class="Item_spec mspec"></div>
                                    <div class="Item_section_des mdesc"></div>
                                    <div class="Item_price mprice"></div>
                                </div>
                            </section>
                        </a>
                    </article>
                </div>
                <div class="prohot">
                    <article class="Item">
                        <a href="#" class="Item_url">
                            <figure class="cover_bg">
                                <img src="images/hero-spark.jpg" alt="hero_spark">
                                <figure class="cover">
                                    <img src="images/spark.png" alt="spark">
                                </figure>
                            </figure>
                            <section class="Item_section">
                                <div class="Item_section_info">
                                    <h2 class="h2 spark"></h2>
                                    <div class="Item_spec sspec"></div>
                                    <div class="Item_section_des sdesc"></div>
                                    <div class="Item_price sprice"></div>
                                </div>
                            </section>
                        </a>
                    </article>
                </div>
                <div class="prohot">
                    <article class="Item">
                        <a href="#" class="Item_url">
                            <figure class="cover_bg">
                                <img src="images/hero-p4p.jpg" alt="phantom 4 pro">
                                <figure class="cover">
                                    <img src="images/P4.png" alt="P4P">
                                </figure>
                            </figure>
                            <section class="Item_section">
                                <div class="Item_section_info">
                                    <h2 class="h2 phantom"></h2>
                                    <div class="Item_spec pspec"></div>
                                    <div class="Item_section_des pdesc"></div>
                                    <div class="Item_price pprice"></div>
                                </div>
                            </section>
                        </a>
                    </article>
                </div>
            </div>
        </div>
        <!--end about-->
        <script type="text/javascript">
            $(document).ready(function () {
                $('.autoplay').slick({
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    autoplay: false,
                    autoplaySpeed: 3000,
                    arrows: false,
                    dots: true
                });
            });
        </script>
        <!--start product-->
        <div class="mainContainer">
            <h3>Accessories</h3>
            <div class="filter-menu">
                <form>
                    <label for="category">Choose a category:</label>
                    <select id="category">
                        <option selected>All</option>
                        <option>Virtual reality</option>
                        <option>Batteries</option>
                        <option>Propellers</option>
                        <option>Memory cards</option>
                        <option>Remotes</option>
                        <option>Sleeve</option>
                        <option>Landing pad</option>
                        <option>Bags</option>
                    </select>
                    <label for="searchTerm">Enter search term:</label>
                    <input type="text" id="searchTerm" placeholder=" E.g. virtual reality">
                    <button class="find">Find</button>
                </form>
            </div>
            <div class="mainproduct">

                <div class="clearfix"></div>
            </div>
        </div>
        <!--end product-->
        <div class="mainContainer">
            <div class="service">
                <div class="Tab_bar">
                    <div class="divservice">
                        <h4>Services</h4>
                    </div>
                    <div class="divservice">
                        <a href="#"><h4 id="service-more">More &gt;</h4></a>
                    </div>
                </div>
                <div class="content-service">
                    <div class="service-container">
                        <a href="#"><img src="images/spark-care.png" alt="spark-care"></a>
                        <div class="productinfo">
                            <a href="#">
                                <span class="namepd">DJI Care Refresh (Spark)</span>
                                <span class="pricepd">USD $59</span>
                            </a>
                        </div>
                    </div>
                    <div class="service-container">
                        <a href="#"><img src="images/phantom-care.png" alt="phantom-care"></a>
                        <div class="productinfo">
                            <a href="#">
                                <span class="namepd">DJI Care Refresh (Phantom 4 Pro)</span>
                                <span class="pricepd">USD $149</span>
                            </a>
                        </div>
                    </div>
                    <div class="service-container">
                        <a href="#"><img src="images/inspire-care.png" alt="Inspire-care"></a>
                        <div class="productinfo">
                            <a href="#">
                                <span class="namepd">DJI Care Refresh (Inspire 2)</span>
                                <span class="pricepd">USD $299</span>
                            </a>
                        </div>
                    </div>
                    <div class="service-container">
                        <a href="#"><img src="images/mavic-care.png" alt="mavic-care"></a>
                        <div class="productinfo">
                            <a href="#">
                                <span class="namepd">DJI Care Refresh (Mavic Pro)</span>
                                <span class="pricepd">USD $99</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mainContainer">
            <div class="shipping_online">
                <div class="style_shipping">
                    <div id="truck">
                        <p><img src="images/truck.svg" alt="shipping" /></p>
                        <h4>Free shipping on orders over USD $89</h4>
                    </div>
                </div>
                <div class="style_shipping">
                    <div id="credit">
                        <p><img src="images/credit.svg" alt="credit card" /></p>
                        <h4>We accept credit cards, PayPal, and bank wires</h4>
                    </div>
                </div>
                <div class="style_shipping">
                    <div id="mail">
                        <p><img src="images/email.svg" alt="Email" /></p>
                        <h4>Email: sengphet890@gmail.com</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="information">
            <div class="mainContainer">
                <div class="info">
                    <h4>Follow Us</h4>
                    <ul>
                        <li>
                            <a href="#">
                                <span class="social"><i class="fa fa-facebook-square" aria-hidden="true"></i></span>
                                <span class="txtsocial">Facebook</span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/luckyshow890">
                                <span class="social"><i class="fa fa-youtube-square" aria-hidden="true"></i></span>
                                <span class="txtsocial">YouTube</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="social"><i class="fa fa-google-plus-square" aria-hidden="true"></i></span>
                                <span class="txtsocial">Google+</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="info">
                    <h4>Hot Categories</h4>
                    <ul>
                        <li>
                            <a class="hotcategories1" href="spark.jsp">Spark</a>
                        </li>
                        <li>
                            <a class="hotcategories2" href="mavic.jsp">Mavic</a>
                        </li>
                        <li>
                            <a class="hotcategories3" href="#">Phantom</a>
                        </li>
                        <li>
                            <a class="hotcategories4" href="#">Osmo</a>
                        </li>
                        <li>
                            <a class="hotcategories5" href="#">Inspire</a>
                        </li>
                    </ul>
                </div>
                <div class="info">
                    <h4>Help &amp; Support</h4>
                    <ul>
                        <li>
                            <a class="hotcategories1" href="#">Shipping &amp; Delivery</a>
                        </li>
                        <li>
                            <a class="hotcategories2" href="#">Payment Guide</a>
                        </li>
                        <li>
                            <a class="hotcategories3" href="#">About DJI Credit</a>
                        </li>
                        <li>
                            <a class="hotcategories4" href="#">Order Information</a>
                        </li>
                        <li>
                            <a class="hotcategories5" href="#">Retrun Policy</a>
                        </li>
                    </ul>
                </div>
                <div class="info">
                    <h4>About DJI</h4>
                    <ul>
                        <li>
                            <a class="hotcategories1" href="about.jsp">Who We Are</a>
                        </li>
                        <li>
                            <a class="hotcategories2" href="#">Events</a>
                        </li>
                        <li>
                            <a class="hotcategories3" href="#">Careers</a>
                        </li>
                        <li>
                            <a class="hotcategories4" href="#">Contact Us</a>
                        </li>
                    </ul>
                </div>
                <hr>
            </div>
        </div>
        <!--end info-->

    </body>
</html>
