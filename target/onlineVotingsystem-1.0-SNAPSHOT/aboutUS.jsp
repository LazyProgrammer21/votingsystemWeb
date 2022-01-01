<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 10/22/2021
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<%@include file="/CSS/bootstrap_css_js.jsp"%>


<div class="container" style=" width: auto; height:auto;margin-top: 0px; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="./img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>

        <h1>
             Introduction:
        </h1>
       <p>
           <pre>
    <b>
        In Nepal, only a classical voting system is conducted during election i.e., secrete Ballet system.

        It's very time consuming and expensive process. So, the propose of doing this is research is to

        test online voting web-based system using three level of security-based voting system facial recognition,

        voter's ID card and OTP verification.


    </b>
            </pre>

       </p>

        <h2>AIMS and OBJECTIVE</h2>
    <b>
        <p>
        <pre>
        To study about the effectiveness of online voting system in Nepal.

        To study  ways of implementation of secured online voting system.

        To study about  face-recognition  algorithm (PCA using eigenfaces and elastic bunch graph matching using fisherface algorithm).

        To explore the classical voting system and its disadvantage.
        </pre>
        </p>
    </b>

        <h1>
            Problem Statement
        </h1>
            <b>
                <pre>
                <p>
                    In Nepal, Election is conducted in classical way i.e ballet polling system which is very slow and expensive process.

            In Nepal, when election starts, Health and Education sector are widely affected in remote areas for a month because,

            voting station is held in school/college's ground, health station's ground. Nepalese people who are in foreign

            countries are not able to cast their vote. Moreover, its lengthy and boring process while counting vote, many votes

            are invalid because many people still don’t know to cast their vote and sometimes there might be mistake during

            counting. Since each vote is important,  by overcomming all these problems and errors, Online-voting web-based system

            comes into action. Despite of its demerit like accidental or intentional data-breach , it's easier, faster with zero

            errors in counting vote and zero invalid vote. All the nepalese people all over the world can cast vote with this System.

                </p>
                </pre>
            </b>

    <div class="container" style=" margin-top: 01px; float: bottom">
        <%@include file="/buttonpart.jsp"%>
    </div>
</div>
</body>
</html>
