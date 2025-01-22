package lk.ijse.ecommerce.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerce.bo.BOFactory;
import lk.ijse.ecommerce.bo.custom.LoginBO;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    LoginBO loginBO = (LoginBO) BOFactory.getBO(BOFactory.Type.LOGIN);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            boolean checkedUser = loginBO.checkUser(username, password);

            if (checkedUser){
                resp.sendRedirect("/E_Commerce_war_exploded/index?message=Login Successfully&checked=true&username=" + username);
            } else {
                resp.sendRedirect("/E_Commerce_war_exploded/index?message=Login Unsuccessfully");
            }

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("/E_Commerce_war_exploded/index?message=Login Unsuccessfully");
        }
    }
}
