<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/22/2021
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title></title>--%>
<%--</head>--%>
<%--<body>--%>
<%--&lt;%&ndash;<%@include file="/CSS/bootstrap_css_js.jsp"%>&ndash;%&gt;--%>

<%--&lt;%&ndash;<table class="table">&ndash;%&gt;--%>

<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th scope="col">S.N.</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th scope="col">Date</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th scope="col">Title</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th scope="col">Descriptions</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </tr>&ndash;%&gt;--%>



<%--&lt;%&ndash;</table>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
    <title>Connection with mysql database</title>
</head>
<body>
<h1>Connection status </h1>
<%
    try {
/* Create string of connection url within specified format with machine name, 
port number and database name. Here machine name id localhost and 
database name is usermaster. */
        String connectionURL = "jdbc:mysql://localhost:3306/votingsystem";

// declare a connection by using Connection interface 
        Connection connection = null;

// Load JBBC driver "com.mysql.jdbc.Driver" 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 

/* Create a connection by using getConnection() method that takes parameters of 
string type connection url, user name and password to connect to database. */
        connection = DriverManager.getConnection(connectionURL, "root", "Sub@sh9841");

// check weather connection is established or not by isClosed() method 
        if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
    <%
        out.println("Successfully connected to " + "MySQL server using TCP/IP...");
        connection.close();
    }
    catch(Exception ex){
    %>
</font>
<font size="+3" color="red"></b>
    <%
            out.println("Unable to connect to database.");
        }
    %>
</font>
</body>
</html>
