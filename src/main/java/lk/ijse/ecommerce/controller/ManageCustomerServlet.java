package lk.ijse.ecommerce.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerce.bo.BOFactory;
import lk.ijse.ecommerce.bo.custom.ManageCustomerBO;
import lk.ijse.ecommerce.dto.UsersDTO;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageCustomerServlet", value = "/manageCustomers")
public class ManageCustomerServlet extends HttpServlet {

    ManageCustomerBO manageCustomerBO = (ManageCustomerBO) BOFactory.getBO(BOFactory.Type.MANAGECUSTOMER);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<UsersDTO> allCustomers = manageCustomerBO.getAllCustomers();

            req.setAttribute("customers", allCustomers);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/pages/manageCustomers.jsp");

            requestDispatcher.forward(req, resp);
        } catch (Exception e) {

        }
    }
}
