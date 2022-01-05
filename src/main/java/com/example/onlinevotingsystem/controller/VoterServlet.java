package com.example.onlinevotingsystem.controller;

import com.example.onlinevotingsystem.dao.VoterDao;
import com.example.onlinevotingsystem.model.Voter;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


@WebServlet(name = "VoterServlet", value = "/VoterServlet")
public class VoterServlet extends HttpServlet {

    private final VoterDao vdao = new VoterDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.getWriter().append(request.getContextPath());
        RequestDispatcher dispatcher = request.getRequestDispatcher("registration-pannel.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String FullName= request.getParameter("name");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        response.getWriter().print(FullName);
        out.println(request.getParameter("pnum"));
//        long Phone = Long.parseLong(request.getParameter("pnum"));
//        long citizenshipNubmer = Long.parseLong(request.getParameter("cnum"));


        Voter v = new Voter();
        v.setFullName(FullName);
//            v.setPhoneNumber(Phone);
//            v.setCitizenshipNumber(citizenshipNubmer);
//            vdao.registration(v);


        RequestDispatcher dispatcher = request.getRequestDispatcher("login-panel.jsp");
        dispatcher.forward(request, response);
    }
}
