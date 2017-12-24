

<%@page import="Model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
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
        </script>
    </head>
    <body>
        <h1></h1>
        <%
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            
        %>
        <div id="modalsignin" class="modal">
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
                        <input type="hidden" value="login" name="command">
                        <button type="submit" class="signupbtn">Sign In</button>
                    </div>
                    <a href="register.jsp" class="tosignin">Not A Member?, Sign Up</a>
                </div>
            </form>
        </div>

    </body>
</html>
