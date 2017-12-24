<%-- 
    Document   : banner
    Created on : Nov 29, 2017, 3:55:23 PM
    Author     : Hacker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>banner</title>
        <script>
            $(document).ready(function () {

                var time = setInterval(function () {
                    $('.khua').trigger('click');
                }, 4000);


                $('.khua').click(function (event) {
                    //clearInterval(time);
                    var slidetoleft = $('.active').next();

                    var vitri = $('.xanh').index() + 1;
                    $('.sliderdot ul li').removeClass('xanh');
                    if (vitri == $('.sliderdot ul li').length) {
                        vitri = 0;
                    }
                    $('.sliderdot ul li:nth-child(' + (vitri + 1) + ')').addClass('xanh');


                    if (slidetoleft.length == 0) {
                        $('.active').addClass('to-Left').one('webkitAnimationEnd', function (event) {
                            $('.to-Left').removeClass('to-Left')
                        });
                        $('._1slider:first-child()').addClass('next-to-left').one('webkitAnimationEnd', function (event) {
                            $('.active').removeClass('active');
                            $('.next-to-left').addClass('active').removeClass('next-to-left');
                        });
                    } else {
                        $('.active').addClass('to-Left').one('webkitAnimationEnd', function (event) {
                            $('.to-Left').removeClass('to-Left')
                        });
                        slidetoleft.addClass('next-to-left').one('webkitAnimationEnd', function (event) {
                            $('.active').removeClass('active');
                            $('.next-to-left').addClass('active').removeClass('next-to-left');
                        });
                    }
                });

                $('.sai').click(function (event) {
                    var slidetoright = $('.active').prev();

                    //process in dot bottom
                    var vitri = $('.xanh').index() + 1;
                    $('.sliderdot ul li').removeClass('xanh');
                    if (vitri == 1) {
                        vitri = $('.sliderdot ul li').length + 1;
                    }
                    $('.sliderdot ul li:nth-child(' + (vitri - 1) + ')').addClass('xanh');

                    //process for left arrow
                    if (slidetoright.length == 1) {
                        $('.active').addClass('to-Right').one('webkitAnimationEnd', function (event) {
                            $('.to-Right').removeClass('to-Right')
                        });
                        slidetoright.addClass('next-to-right').one('webkitAnimationEnd', function (event) {
                            $('.active').removeClass('active');
                            $('.next-to-right').addClass('active').removeClass('next-to-right');
                        });
                    } else {
                        $('.active').addClass('to-Right').one('webkitAnimationEnd', function (event) {
                            $('.to-Right').removeClass('to-Right')
                        });
                        $('._1slider:last-child()').addClass('next-to-right').one('webkitAnimationEnd', function (event) {
                            $('.active').removeClass('active');
                            $('.next-to-right').addClass('active').removeClass('next-to-right');
                        });
                    }
                });

                $('.sliderdot ul li').click(function (event) {
                    $('.sliderdot ul li').removeClass('xanh');
                    $(this).addClass('xanh');

                    //remove current active
                    $('.active').addClass('to-Left').one('webkitAnimationEnd', function (event) {
                        $('.to-Left').removeClass('to-Left')
                    });


                    $('._1slider:nth-child(' + ($(this).index() + 1) + ')').addClass('next-to-left').one('webkitAnimationEnd', function (event) {
                        $('.active').removeClass('active');
                        $('.next-to-left').addClass('active').removeClass('next-to-left');
                    });
                });
            });
        </script>
    </head>
    <body>

        <div class="banner" id="home">
            <div class="banner_slide">
                <div class="sliderpic">
                    <div class="_1slider active"><img src="images/banner slide/1.png" alt="1.png"></div>
                    <div class="_1slider"><img src="images/banner slide/2.jpg" alt="2.png"></div>
                    <div class="_1slider"><img src="images/banner slide/3.jpg" alt="3.png"></div>
                    <div class="_1slider"><a href="spark.jsp"><img src="images/banner slide/4.jpg" alt="4.png"></a></div>
                    <div class="_1slider"><img src="images/banner slide/5.jpg" alt="5.png"></div>
                </div>
                <div class="sliderdot">
                    <div class="sai"><img src="images/banner slide/arrow-left.png" alt=""></div>
                    <div class="khua"><img src="images/banner slide/arrow-right.png" alt=""></div>
                    <ul>
                        <li class="xanh">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                    </ul>
                </div>
            </div>
        </div>

    </body>
</html>
