
<%--  Created by IntelliJ IDEA.--%>
<%--  User: hunte--%>
<%--  Date: 12/22/2021--%>
<%--  Time: 11:33 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%@include file="/CSS/bootstrap_css_js.jsp"%>

<div class="container" style=" width: auto; height:900px;margin-top: 0px; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>
    <br>
    <br>

<table class="table table-dark table-striped">
<thead>
    <tr>
        <th scope="col">S.N.</th>
        <th scope="col">Date</th>
        <th scope="col">Title</th>
        <th scope="col">Descriptions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>2021/30/12</td>
        <td>Election Date Confirmed</td>
        <td>The re-election will be held by 2022. </td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>20/12/2021</td>
        <td>Voter ID issued</td>
        <td>This is to Notify all the voters to save their voterID card</td>
    </tr>

    </tbody>


</table>

    <div class="container" style=" margin-top: 550px; float: bottom">
        <%@include file="/buttonpart.jsp"%>
    </div>
</div>


</body>
</html>



