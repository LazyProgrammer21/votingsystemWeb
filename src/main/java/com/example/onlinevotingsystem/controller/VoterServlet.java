package com.example.onlinevotingsystem.controller;

import com.example.onlinevotingsystem.dao.VoterDao;
import com.example.onlinevotingsystem.model.Voter;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;


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
        String Phone = request.getParameter("pnum");
        String citizenshipNubmer = request.getParameter("cnum");
        System.out.println(Integer.parseInt(Phone));

        try{
            Voter v = new Voter();
            v.setFullName(FullName);
            v.setPhoneNumber(Float.parseFloat(Phone));
            v.setCitizenshipNumber(Float.parseFloat(citizenshipNubmer));
            vdao.registration(v);

        }
        catch (ClassNotFoundException e){
            e.printStackTrace();


        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("login-panel.jsp");
        dispatcher.forward(request, response);
        System.out.println(Phone);
    }
}
