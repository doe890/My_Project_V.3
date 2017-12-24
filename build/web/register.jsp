<%-- 
    Document   : register
    Created on : Dec 3, 2017, 6:38:14 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register!</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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

        <div id="modalsignup" class="modal">
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
                        <input type="hidden" value="insert" name="command">
                        <button type="submit" class="signupbtn">Sign Up</button>
                    </div>
                    <a href="login.jsp" class="tosignin">Already Have An Account, Sign In</a>
                </div>
            </form>
        </div>
       
    </body>
</html>
