/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Cart;
import Model.Users;
import Tools.MD5;
import dao.UsersDao;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class UsersServlet extends HttpServlet {

    UsersDao usersDao = new UsersDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        Cart cart = new Cart();
        HttpSession session = request.getSession();

        switch(command){
            case "insert":
                users.setUserID(new Date().getTime());
                users.setUserName(request.getParameter("fname"));
                users.setUserEmail(request.getParameter("email"));
                users.setUserpass(MD5.encryption(request.getParameter("pass")));
                users.setUserRole(false);
                usersDao.insertUser(users);
                session.setAttribute("user", users);
                url = "/index.jsp";
                break;
            case "login":
                users = usersDao.login(request.getParameter("email"), MD5.encryption(request.getParameter("pass")));
                if(users != null){
                    session.setAttribute("user", users);
                    url = "/index.jsp";
                }else{
                    request.setAttribute("error", "Error Email or Password!");
                    url = "/login.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

   
}
