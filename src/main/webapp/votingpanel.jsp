<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/31/2021
  Time: 11:33 AM
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
    <title>Voting Panel</title>
    <%@include file="/CSS/bootstrap_css_js.jsp"%>
</head>


<body>
<div class="container" style=" width: auto; height:1550px;margin-top: 0px; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>
    <div>
        <p><h2>Today Date: <%=new java.util.Date()%></h2></p>
        <h4><a href="result.jsp"><p style="float:right; color: black"><b>Logout</b></p></a></h4>
        <h3><p id="msg"></p></h3>
    </div>
    <div>
        <table class="table table dark table-striped">
            <thead>
            <tr>
                <th scope="col">Postion</th>
                <th scope="col">Candidate</th>


            </tr>
            <tr>
                <th> Mayor</th>
                <th>SN</th>
                <th>Name</th>
                <th>Region</th>
                <th>state</th>
                <th>Party</th>
                <th>Action</th>

            </tr>


            </thead>
            <tbody>
            <tr>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select electionposition.Position, candidate.idCandidate, candidate.name,  region_state.Region,region_state.Province, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State and idElectionPosition=1";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
            <tr>
                <td></td>
                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("party_name")%></td>
                <td> <p>
                    <input type='submit' value='Vote'
                           onclick='save(); this.disabled = true;' />
                </p></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tr>




                <th>Vice-Mayor</th>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select electionposition.Position, candidate.idCandidate, candidate.name,  region_state.Region,region_state.Province, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State and idElectionPosition=2";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

            <tr>
                <td></td>
                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("party_name")%></td>
                <td><p>
                    <input type='submit' value='Vote'
                           onclick='save(); this.disabled = true;' />
                </p></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tr>
            <tr>

                <th>President</th>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select electionposition.Position, candidate.idCandidate, candidate.name,  region_state.Region,region_state.Province, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State and idElectionPosition=3";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

            <tr>
                <td></td>
                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("party_name")%></td>
                <td><p>
                    <input type='submit' value='Vote'
                           onclick='save(); this.disabled = true;' />
                </p></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tr>
            <tr>

                <th>Vice-President</th>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select electionposition.Position, candidate.idCandidate, candidate.name,  region_state.Region,region_state.Province, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State and idElectionPosition=4";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

            <tr>
                <td></td>
                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("party_name")%></td>
                <td><p>
                    <input type='submit' value='Vote'
                           onclick='save(); this.disabled = true;' />
                </p></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tr>
            <tr>

                <th>Women ward Member</th>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select electionposition.Position, candidate.idCandidate, candidate.name,  region_state.Region,region_state.Province, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State and idElectionPosition=5";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

            <tr>
                <td></td>
                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("party_name")%></td>
                <td><p>
                    <input type='submit' value='Vote'
                           onclick='save(); this.disabled = true;' />
                </p></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tr>
            <tr>

                <th>Dalit ward Member</th>
                    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql = "select electionposition.Position, candidate.idCandidate, candidate.name,  region_state.Region,region_state.Province, party.party_name\n" +
"from candidate,electionposition,party, region_state where candidate.positionID=electionposition.idElectionPosition and candidate.partyID=party.idParty and candidate.stateID=region_state.idRegion_State and idElectionPosition=6";

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

            <tr>
                <td></td>
                <td><%= resultSet.getInt("idCandidate")%></td>
                <td><%= resultSet.getString("name")%></td>
                <td><%= resultSet.getString("Region")%></td>
                <td><%= resultSet.getInt("Province")%></td>
                <td><%= resultSet.getString("party_name")%></td>
                <td><p>
                    <input type='submit' value='Vote'
                           onclick='thanku(); this.disabled = true;' />
                </p></td>



            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </tr>




            </tbody>





        </table>
        <h2><p id="thank"></p></h2>

    </div>
    <div class="container" style=" margin-top: 01px; float: bottom">
        <%@include file="buttonpart.jsp"%>
    </div>


</div>
<script>
    function save(){
        var msg = document.getElementById('msg');
        msg.innerHTML = "Vote success";
    }
    function thanku(){
        var msg = document.getElementById('thank');
        msg.innerHTML = "Thank you for Voting! Logout To see the Result!!";
    }
</script>
</body>
</html>
