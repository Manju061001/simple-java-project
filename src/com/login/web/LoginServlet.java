package com.login.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate username and password (you should replace this with your authentication logic)
        if (username.equals("admin") && password.equals("admin")) {
            // Successful login
            request.getSession().setAttribute("username", username);
            response.sendRedirect("welcome.jsp");
        } else {
            // Failed login
            response.sendRedirect("error.jsp");
        }
    }
}
