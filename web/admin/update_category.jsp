<%-- 
    Document   : insert_category
    Created on : Dec 23, 2017, 11:53:02 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Category</title>
        <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <%
            String error= "";
            if(request.getParameter("error") != null){
                error = (String) request.getParameter("error");
            }
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>
                <div id="rightContent">
                    <h3>Update Category</h3>

                   
                    <form action="/my_project_v.3/ManageCategoryServlet" method="POST">
                    <table width="95%">
                        <tr>
                            <td style="float: right"><b>Category ID </b></td>
                            <td><input type="text" class="sedang" name="CateID"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Category Name: </b></td>
                            <td><input type="text" class="sedang" name="CateName"><%=error%></td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="category_id" value="<%= request.getParameter("category_id") %>">
                                <input type="submit" class="button" value="Update">
                            </td></tr>
                    </table>
                    </form>
                </div>


                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>
