package com.example.onlinevotingsystem.controller;

import com.example.onlinevotingsystem.dao.VoterDao;
import com.example.onlinevotingsystem.model.Voter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ServletLogin", value = "/ServletLogin")
public class ServletLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append(request.getContextPath());
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Float vid= Float.parseFloat(request.getParameter("voterID"));
        Float phone = Float.parseFloat(request.getParameter("phonenumber"));




            VoterDao v = new VoterDao();
            v.login(vid,phone);




        RequestDispatcher dispatcher = request.getRequestDispatcher("votingpanel.jsp");
        dispatcher.forward(request, response);

    }

}
