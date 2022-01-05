
<%--  Created by IntelliJ IDEA.--%>
<%--  User: hunte--%>
<%--  Date: 12/22/2021--%>
<%--  Time: 11:33 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "votingsystem";
    String userId = "root";
    String password = "Sub@sh9841";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%@include file="/CSS/bootstrap_css_js.jsp"%>

<div class="container" style=" width: auto; height:1250px;margin-top: 0px; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>
    <br>
    <br>

    <div>
        <p><h2>Today Date: <%=new java.util.Date()%></h2></p>
    </div>
<table class="table table-dark table-striped">
<thead>
    <tr>
        <th scope="col">Notice ID</th>
        <th scope="col">Date</th>
        <th scope="col">Title</th>
        <th scope="col">Descriptions</th>
    </tr>
    </thead>
    <tbody>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM votingsystem.notice";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
    <tr>
        <td><%= resultSet.getInt("idNotice")%></td>
        <td><%= resultSet.getString("Date")%></td>
        <td><%= resultSet.getString("Title")%></td>
        <td><%= resultSet.getString("Description")%></td>
    </tr>
    <%
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    </tbody>


</table>

    <div class="container" style=" margin-top: 550px; float: bottom">
        <%@include file="/buttonpart.jsp"%>
    </div>
</div>


</body>
</html>



