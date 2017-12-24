/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Category;
import dao.CategoryDao;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class ManageCategoryServlet extends HttpServlet {

    CategoryDao categoryDao = new CategoryDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String category_id = request.getParameter("category_id");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    categoryDao.deleteCategory(Long.parseLong(category_id));
                    url = "/admin/category_manager.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String CateName = request.getParameter("CateName");
        String CateID = request.getParameter("CateID");
        String category_id = request.getParameter("category_id");
        String url = "", error = "";

        if (CateName.equals("")) {
            error = "Please enter a name for this catergory";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        categoryDao.insertCategory(new Category(Long.parseLong(CateID), CateName));
                        url = "/admin/category_manager.jsp";
                        break;
                    case "update":
                        categoryDao.updateCategory(new Category(Long.parseLong(category_id),CateName));
                        url = "/admin/category_manager.jsp";
                        break;
                }
            } else {
                url = "/admin/insert_category.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

}
