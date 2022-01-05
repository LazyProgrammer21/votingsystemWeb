package com.example.onlinevotingsystem.controller;

import com.example.onlinevotingsystem.dao.VoterDao;
import com.example.onlinevotingsystem.model.Voter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
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

        String vid = request.getParameter("voterID");

        String phone =request.getParameter("phonenumber");


        VoterDao v = new VoterDao();


            if(v.login(vid,phone)){
                RequestDispatcher dispatcher = request.getRequestDispatcher("votingpanel.jsp");
                dispatcher.forward(request, response);
            }
            else
            {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.println("Invalid username");
            }








    }

}
