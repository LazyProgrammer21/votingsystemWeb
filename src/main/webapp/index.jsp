<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
    <!doctype html>

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/style.css" />

        <title>OnlineVotingSystem</title>
        <%@include file="CSS/bootstrap_css_js.jsp"%>

        <style>

            body{
                background-color: #1D212B;
                height: auto;
            }


        </style>
    </head>
    <body >


    <div class="container" style=" width: auto; height:auto;margin-top: 0px; margin-left: 370px; background-color: #ffffff">


        <div style="height: 105px; background-color: white" >
            <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
        </div>
        <div >
            <%@include file="horizental-menu-bar.jsp"%>
        </div>


        <div class="box" style=" width: 100%; background-color: #2696E9">
            <div style="float: left; width: 50%; height: 850px; background-color: #2696E9;">
                <div style="margin-left: 0px">
               <%@include file="covid-19-api.jsp"%>
                </div>

            </div>

            <div style="float: right; width: 50%; height: 850px; background-color: #2696E9">
                <div  style="float: top; width: 100%; height: 563px; margin-left: -40px ">
                    <%@include file="login-panel.jsp"%>
                </div>
                <div style="float: bottom; height: 355px; width: 100%; background-color: #2696E9;margin-top: -90px">
                    <%@include file="img-slider.jsp"%>
                </div>

            </div>
        </div>



            <div class="container" style=" margin-top: 01px; float: bottom">
                <%@include file="buttonpart.jsp"%>
            </div>




</div>





<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
    <script src="js/countries.js"></script>
    <script src="js/app.js"></script>
</body>
</html>