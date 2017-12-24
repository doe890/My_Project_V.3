<%-- 
    Document   : support
    Created on : Nov 29, 2017, 4:17:59 PM
    Author     : Hacker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fly Now</title>
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    </head>
    <body>
       
        <jsp:include page="header.jsp"></jsp:include>
         <div class="video_banner">
            <section class="Video">
              <video preload="auto" loop autoplay>
                <source src="videos/1080.mp4" type="video/mp4" />
              </video>
              <div class="video_content_cover">
                <div class="inside_video_content">
                  <h1 class="video_title">FLY TODAY</h1>
                  <p class="">
                    FREE hand-delivery, professional setup, and training as soon as TODAY*.
                    <br />
                    - Service provided by Enjoy -
                  </p>
                </div>
              </div>
            </section>
        </div>
         <!-- Start content -->
        <div class="mainContainer">
          <div class="content">
            <div>
              <h3 class="h3_content">Spark With Free Training</h3>
            </div>
            <div class="ProductListColumn">
              <ul class="ProductList">
                <li class="ProductListColumn_1">
                  <a href="#"class="PrimaryProduct">
                    <div class="PrimaryProduct_img">
                      <img src="images/spark-training.png" alt="Img_Cover"/>
                    </div>
                    <div class="PrimaryProduct_box">
                      <h4 class="PrimaryProduct_box_logo">Spark Fly More Combo</h4>
                      <p class="PrimaryProduct_specs">
                        <span class="PrimaryProduct_spec">Speed: 50km/h</span>
                        <span class="PrimaryProduct_spec">Flight time: 16 mins</span>
                        <span class="PrimaryProduct_spec">VPS range: 30m</span>
                        <span class="PrimaryProduct_spec">Gimbal: 2-Axis</span>
                      </p>
                      <p class="PrimaryProduct_des">
                        Fly farther and faster with a remote controller, an extra battery, and accessories.
                      </p>
                      <p class="PrimaryProduct_price">
                        USD $699 including FREE hand-delivery and professional setup
                      </p>
                    </div>
                  </a>
                </li>
                <li class="ProductListColumn_2">
                  <a class="PrimaryProduct"href="spark.jsp">
                    <div class="PrimaryProduct_img">
                      <img src="images/spark.png" alt="Img_Cover"/>
                    </div>
                    <div class="PrimaryProduct_box">
                      <h4 class="PrimaryProduct_box_logo">SPARK</h4>
                      <p class="PrimaryProduct_des">
                        Spark is a mini drone that features all of DJI's signature technologies, allowing you to seize the moment whenever you feel inspired.
                      </p>
                      <p class="PrimaryProduct_price">
                        USD $699 including FREE hand-delivery and professional setup
                      </p>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="mb-footer.jsp"></jsp:include>
    </body>
</html>
