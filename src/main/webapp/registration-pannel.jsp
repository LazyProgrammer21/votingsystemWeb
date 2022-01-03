<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/7/2021
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>

<%@page import="com.example.onlinevotingsystem.dao.SentCodeTwilio" %>


<%

//if(request.getParameter("getCode")!=null){
//
//    SentCodeTwilio obj1 = new SentCodeTwilio();
//    obj1.sentOTP(pnum);
//
//}


%>

















<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form </title>--->
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }


        .content form .user-details{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }
        form .user-details .input-box{
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }
        form .input-box span.details{
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }
        .user-details .input-box input{
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }
        .user-details .input-box input:focus,
        .user-details .input-box input:valid{
            border-color: #9b59b6;
        }

        form input[type="radio"]{
            display: none;
        }
        form .button{
            height: 45px;
            margin: 35px 0
        }
        form .button input{
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        form .button input:hover{
            /* transform: scale(0.99); */
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }
        @media(max-width: 484px){
            .container{
                max-width: 100%;
            }
            form .user-details .input-box{
                margin-bottom: 15px;
                width: 100%;
            }
            form .category{
                width: 100%;
            }
            .content form .user-details{
                max-height: 300px;
                overflow-y: scroll;
            }
            .user-details::-webkit-scrollbar{
                width: 5px;
            }
        }
        @media(max-width: 459px){
            .container .content .category{
                flex-direction: column;
            }
        }


        body {
            font-family:"Raleway";
        }



    </style>
</head>
<body>

<%@include file="CSS/bootstrap_css_js.jsp"%>
<div class="container" style=" width: auto; height:auto; margin-left: 370px; background-color: #2696E9">


    <div style="height: 105px; background-color: white" >
        <img src="img/header.jpg" class="card-img-top" alt="logo_election_commission" height="105px" >
    </div>
    <div >
        <%@include file="/horizental-menu-bar.jsp"%>
    </div>
<div class="container" style="height: 950px; margin-left: 410px; margin-top: 70px">
    <div class="title"><h1>Registration</h1></div>

        <form action="<%=request.getContextPath()%>/VoterServlet" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Full Name</span>
                    <input style="width: 400px" type="text" id="name" placeholder="Enter your name" required>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input style="width: 400px" type="text"  id="pnum" placeholder="Enter your phone number" required>
                </div>
                <div class="input-box">
                    <span class="details">Citizenship Number</span>
                    <input style="width: 400px" type="text" id = "cum" placeholder="Enter your Citizenship Number" required>
                </div>
                <div class="input-box">
                    <a href="#" name="getCode" style="text-decoration-color: black">Get Otp</a><br>
                    <input style="width: 400px" type="text" id="code" placeholder="OTP Code here" required>
                </div>

            </div>
            <label>We are currently working on it to record a face data. Till then please click register burtton</label><br>
            <div style="margin-left: 280px">

                <button type="button" style="margin-left: -120px; height: 50px; width: 150px">Record Face Data</button>

            </div>


            <div class="button" style="width: 400px">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
    <div class="container" style=" margin-top: 01px; float: bottom">
        <%@include file="buttonpart.jsp"%>
    </div>

</div>
</body>

</html>
