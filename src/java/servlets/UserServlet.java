/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;
import services.UserService;


/**
 *
 * @author 821052
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<User> users = null;
        UserService us = new UserService();
        
        String action = request.getParameter("action");
        
        if (action != null && action.equals("view")) {
            try {
                char ch = '+';
                String email = request.getParameter("email");
                email = email.replace(' ',ch);
                User editUser = us.get(email);
                request.setAttribute("editUser", editUser);
            } catch (Exception ex) {
            }
        }else if(action != null && action.equals("delete")){
            try {
                char ch = '+';
                String email = request.getParameter("email");
                email = email.replace(' ',ch);
                us.delete(email);
            } catch (Exception ex) {
            }
        }
        try {
            users = us.getAll();
            request.setAttribute("users", users);
        } catch (Exception ex) {
        }
        getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
        try {
            String action = request.getParameter("action");
            UserService us = new UserService();
            
            switch(action){
                case "add":
                    String email = request.getParameter("email");
                    String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String password = request.getParameter("password");
                    int role = Integer.parseInt(request.getParameter("role"));
                    us.insert(email, 1, fname, lname, password, role);
                    break;
                case "save":
                    String editEmail = request.getParameter("editEmail");
                    String editFname = request.getParameter("editFname");
                    String editLname = request.getParameter("editLname");
                    String editPassword = request.getParameter("editPassword");
                    int editRole = Integer.parseInt(request.getParameter("editRole"));
                    us.update(editEmail, editRole, editFname, editLname, editPassword, editRole);
                    break;
                case "cancel":
                    request.setAttribute("editEmail", null);
                    request.setAttribute("editFname", null);
                    request.setAttribute("editLname", null);
                    request.setAttribute("editPassword", null);
                    request.setAttribute("editRole", null);
                    break;        
            }
        } catch (Exception ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            users = us.getAll();
            request.setAttribute("users", users);
        } catch (Exception ex) {
        }
        getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
    }

}
