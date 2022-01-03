<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/31/2021
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Voting system</title>
    <%@include file="/CSS/bootstrap_css_js.jsp"%>
</head>


<body>
<div class="container" style=" width: auto; height:600px;margin-top: 0px; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>
    <div>
        <table class="table table dark table-striped">
            <thead>
            <tr>
                <th scope="col">Postion</th>
                <th scope="col">Candidate</th>


            </tr>
            <tr>
                <th>SN</th>
                <th>Name</th>
                <th>Party</th>
                <th>Logo</th>
            </tr>


            </thead>




        </table>

    </div>

</div>
</body>
</html>
