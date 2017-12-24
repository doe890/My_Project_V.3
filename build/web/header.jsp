
<%@page import="Model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="Model.Cart"%>
<%-- 
    Document   : header
    Created on : Nov 25, 2017, 6:49:36 PM
    Author     : Hacker
--%>

<%@page import="Model.Users"%>
<%@page import="Model.Category"%>
<%@page import="dao.CategoryDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Header</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/spark.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-migrate-3.0.1.min.js"></script>
        <script type="text/javascript" src="slick/slick.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

                function check_username_ajax(username) {
                    $("#user-result").html('<img src="img/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });

            function oPensignup() {
                var open = document.querySelector('#modalsignup');
                open.style.display = 'block';
            }
            function oPensignin() {
                var open = document.querySelector('#modalsignin');
                open.style.display = 'block';
            }
            function cLose() {
                var closeup = document.querySelector('#modalsignup');
                var closein = document.querySelector('#modalsignin');
                closeup.style.display = 'none';
                closein.style.display = 'none';
            }
        </script>


    </head>
    <body>
        <%
            CategoryDao categoryDao = new CategoryDao();
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <div class="header">
            <div class="mainContainer">
                <div class="reg">
                    <% if (users != null) {%>
                    <span class="signin">Welcome Back, <%= users.getUserName()%>!</span>
                    <a href="LogoutServlet"><span>Log out</span></a>
                    <%} else {%>
                    <a href="#" class="signup" onclick="oPensignup()"><i class="fa fa-user-plus"></i>Sign Up</a>
                    <a href="#" class="signin" onclick="oPensignin()"><i class="fa fa-sign-in"></i>Sign In</a>
                    <%}%>

                </div>
                <div id="modalsignup" class="modal">
                    <span class="close" title="Close" onclick="cLose()">&times;</span>
                    <form action="UsersServlet" class="modal-content animate-zoom" method="POST">
                        <div class="container">
                            <div class="avatar">
                                <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avater" width="150px">
                            </div>
                            <h3 class="h3-signup">Create An Account!</h3>
                            <div class="input-box">
                                <input type="text" class="inputbox" id="fullname" placeholder="Full Name" name="fname" required>
                                <div class="input-icon"><i class="fa fa-user"></i></div>
                            </div>
                            <div class="input-box">
                                <input type="text" class="inputbox" placeholder="Email Address" name="email" id="email" required>
                                <span id="user-result"></span>
                                <div class="input-icon"><i class="fa fa-envelope"></i></div>
                            </div>

                            <div class="input-box">
                                <input type="password" class="inputbox" placeholder="Password" name="pass" required>

                                <div class="input-icon"><i class="fa fa-key"></i></div>
                            </div>


                            <input type="checkbox" checked="checked"> Remember me
                            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

                            <div class="clearfix">
                                <button type="button" class="cancelbtn" onclick="cLose()">Cancel</button>
                                <input type="hidden" value="insert" name="command">
                                <button type="submit" class="signupbtn">Sign Up</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="modalsignin" class="modal">
                    <span class="close" title="Close" onclick="cLose()">&times;</span>
                    <form action="UsersServlet" method="POST" class="modal-content animate-zoom">
                        <div class="container">
                            <div class="avatar">
                                <img src="https://www.w3schools.com/howto/img_avatar.png" alt="Avater" width="150px">
                            </div>
                            <h3 class="h3-signup"></h3>

                            <% if (request.getParameter("error") != null) {%>
                            <div>
                                <p style="color: red"><%= request.getParameter("error")%></p>
                            </div>
                            <%}%>
                            <div class="input-box">
                                <input type="text" class="inputbox" placeholder="Email Address" name="email" required>
                                <div class="input-icon"><i class="fa fa-envelope"></i></div>
                            </div>

                            <div class="input-box">
                                <input type="password" class="inputbox" placeholder="Password" name="pass" required>
                                <div class="input-icon"><i class="fa fa-key"></i></div>
                            </div>

                            <input type="checkbox" checked="checked"> Remember me
                            <a href="#" class="fgpw">Forget password?</a>
                            <div class="clearfix">
                                <button type="button" class="cancelbtn" onclick="cLose()">Cancel</button>
                                <input type="hidden" value="login" name="command">
                                <button type="submit" class="signupbtn">Sign In</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="giohang">
                    <a href="#" class="cart" data-number="3">
                        <span class="cart_icon"><i class="material-icons">shopping_cart</i></span>
                        <span>Carts</span>
                        <span class="item_number"><%= cart.countItem()%></span>
                    </a>
                    <div class="itemlist">
                        <h3 style="margin:0 0 10px 0" >Recently added items(<%= cart.countItem()%>)</h3>
                        <div class="shopping_cart">
                            <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                            <div class="cart_box">
                                <div class="message">
                                    <a href="CartServlet?command=remove&productID=<%= list.getValue().getProduct().getProductID()%>" class="alert-close"> </a> 
                                    <div class="list_img"><img src="<%= list.getValue().getProduct().getProductImage()%>" class="img-responsive" alt=""></div>
                                    <div class="list_desc"><h4 style="margin:0 0 5px 0"><a href=""><%= list.getValue().getProduct().getProductName()%></a></h4><%= list.getValue().getQuantity()%> x <span class="actual">
                                            $<%= list.getValue().getProduct().getProductPrice()%></span></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <%}%>
                        </div>
                        <div class="total">
                            <div class="total_left">Cart Total: </div>
                            <div class="total_right">$<%= cart.totalCart()%></div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="login_buttons">
                            <%
                                if (cart.countItem() > 0) {
                            %>
                            <div class="check_button"><a href="checkout.jsp">Check out</a></div>
                            <%} else {%>
                            <div class="check_button"><a href="index.jsp">Check out</a></div>
                            <%}%>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>

        <!--end header-->

        <!--start logo-->
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.svg" alt="Logo"></a>
        </div>
        <!--end logo-->

        <!--start menu-->

        <div class="mainContainer">
            <div class="menu">
                <div id="menu-left">
                    <ul>
                        <li><a href="index.jsp" title="DJI LAOS STORE"><i class="fa fa-home"></i>&nbsp;DJI STORE</a></li>
                        <li>
                            <div class="dropdown">
                                <a href="#">Products &nbsp;<i class="fa fa-caret-down"></i></a>
                                <div class="dropdown-content">
                                    <%
                                        for (Category c : categoryDao.getListCategory()) {
                                    %>
                                    <a href="product.jsp?categoryID=<%=c.getCategoryID()%>"><%= c.getCategoryName()%></a>
                                    <!--                                                                    <a href="#">Mavic Pro</a>
                                                                                                            <a href="#">Phantom</a>
                                                                                                            <a href="#">Inspire</a>
                                                                                                            <a href="#">Osmo</a>-->
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </li>
                        <li><a href="promotion.jsp"><i class="fa fa-graduation-cap"></i> Promotions</a></li>
                        <li><a href="about.jsp"><i class="fa fa-info-circle"></i> About Us</a></li>
                        <li><a href="support.jsp"><i class="fa fa-briefcase"></i> Supports</a></li>
                    </ul>
                </div>
                <div id="menu-right">
                    <div id="containSearch">
                        <form action="abc.php">
                            <input class="searchtxt" type="text" placeholder="Search Products...">
                            <input class="searchbtn" type="submit" value="Search">
                        </form>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

    </body>
</html>
