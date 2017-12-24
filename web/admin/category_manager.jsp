<%-- 
    Document   : category_manager
    Created on : Dec 23, 2017, 11:05:27 PM
    Author     : admin
--%>

<%@page import="Model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Category</title>
        <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <%
            CategoryDao categoryDao = new CategoryDao();
            ArrayList<Category> list = categoryDao.getListCategory();
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>
                <div id="rightContent">
                <h3>Category Manager</h3>
                <a href="${root}/admin/insert_category.jsp">Add More Category</a>
                <table class="data">
                    
                    <tr class="data">
                        <th class="data" width="30px">No </th>
                        <th class="data">Category ID</th>
                        <th class="data">Category Name</th>
                        <th class="data" width="90px">Option</th>
                    </tr>
                    
                    <%
                        int count = 0;
                        for(Category category : list){
                        count ++;    
                    %>
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%= category.getCategoryID() %></td>
                        <td class="data"><%= category.getCategoryName() %></td>
                        <td class="data" width="90px">
                        <center>
                            <a href="${root}/admin/update_category.jsp?command=update&category_id=<%= category.getCategoryID() %>">Edit</a>&nbsp;|&nbsp;
                            <a href="/my_project_v.3/ManageCategoryServlet?command=delete&category_id=<%= category.getCategoryID() %>">Delete</a>
                        </center>
                        </td>
                    </tr>
                    <%}%>
                   
                </table>
            </div>
            <div class="clear"></div>

        <jsp:include page="footer.jsp"></jsp:include>

    </div>
</body>
</html>
