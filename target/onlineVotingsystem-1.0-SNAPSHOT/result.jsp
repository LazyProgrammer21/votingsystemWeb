<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 1/6/2022
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Result</title>
    <%@include file="/CSS/bootstrap_css_js.jsp"%>
</head>
<body>
<div class="container" style=" width: auto; height:950px;margin-top: 0px; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>
    <div>
        <p><h2>Today Date: <%=new java.util.Date()%></h2></p>


    </div>
    <div>
        <table class="table table dark table-striped">
            <thead>
            <tr>
                <th scope="col">Candidate ID</th>
                <th scope="col">Name</th>
                <th scope="col">Total Vote</th>
                <th scope="col">Position</th>
                <th scope="col">Province</th>
                <th scope="col">Region</th>
                <th scope="col">idParty</th>
                <th scope="col">Party Name</th>


            </tr>

            </thead>
            <tbody>
            <tr>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select candidate.idCandidate, candidate.name, candidate.TotalVote,electionposition.Position, region_state.Province, region_state.Region, party.idParty, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State;";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
            <tr>

                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getInt("TotalVote")%></td>
                <td><%= resultSet.getString("Position")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("idParty")%></td>
                <td><%= resultSet.getString("party_name")%></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tbody>
        </table>
</div>
    <div class="container" style=" margin-top: 01px; float: bottom">
        <%@include file="buttonpart.jsp"%>
    </div>

</div>
</body>
</html>