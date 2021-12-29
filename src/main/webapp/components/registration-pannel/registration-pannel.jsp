<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/7/2021
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
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
        body{
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .container{
            max-width: 700px;
            width: 100%;
            background-color: #fff;
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.15);
        }
        .container .title{
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }
        .container .title::before{
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 30px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
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
        @media(max-width: 584px){
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
        .center {
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
        }
        .popup-overlay {
            position:fixed;
            top:0px;
            left:0px;
            width:100%;
            height:100vh;
            z-index:1;
            background:rgba(0,0,0,0.5);
            display:none;
        }
        .popup {
            position:absolute;
            top:-150%;
            left:50%;
            transform:translate(-50%,-50%) scale(1.15);
            width:600px;
            height:440px;
            background:#f5f5f5;
            z-index:2;
            opacity:0;
            box-shadow:5px 5px 3px rgba(0,0,0,0.2);
            transition:transform 300ms ease-in-out,opacity 300ms ease-in-out;
        }
        body.showLoginForm .popup-overlay {
            display:block;
        }
        body.showLoginForm .popup {
            top:50%;
            opacity:1;
            transform:translate(-50%,-50%) scale(1);
        }
        .popup .popup-close {
            position:absolute;
            top:-10px;
            right:-10px;
            width:45px;
            height:40px;
            background:#555;
            color:#f5f5f5;
            font-size:25px;
            font-weight:600;
            text-align:center;
            border-radius:50%;
            cursor:pointer;
        }
        .popup .form .avatar {
            margin:30px 0px 20px;
            text-align:center;
        }
        .popup .form .avatar img {
            width:300px;
            border-radius:50%;
        }
        .popup .form .header {
            text-align:center;
            font-size:20px;
            font-weight:600;
            color:#222;
            margin:20px 0px;
        }
        .popup .form .element {
            padding:8px 20px;
        }
        .popup .form .element label {
            display:block;
            font-size:14px;
            color:#222;
            margin-bottom:5px;
        }
        .popup .form .element input {
            width:100%;
            padding:8px 10px;
            box-sizing:border-box;
            outline:none;
            border:1px solid #aaa;
            background:#eee;
            border-radius:5px;
        }
        .popup .form .element button {
            margin-top:5px;
            width:100%;
            padding:10px 0px;
            text-transform:uppercase;
            outline:none;
            border:none;
            font-size:15px;
            font-weight:600;
            border-radius:5px;
            cursor:pointer;
            background:#4889da;
            color:#f5f5f5;
        }

    </style>
</head>
<body>
<div class="center">
    <button onclick="openLoginForm()">Register</button>
</div>
<div class="popup-overlay"></div>
<div class=" popup container">
    <div class="popup-close" onclick="closeLoginForm()">×</div>
    <div class="title">Registration</div>
    <div class="content">
        <form action="#">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Full Name</span>
                    <input type="text" placeholder="Enter your name" required>
                </div>
                <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input type="number" placeholder="Enter your phone number" required>
                </div>
                <div class="input-box">
                    <span class="details">Citizenship Number</span>
                    <input type="number" placeholder="Enter your Citizenship Number" required>
                </div>

            </div>

            <div class="button">
                <input type="submit" value="Register">
            </div>
        </form>
    </div>
</div>

</body>
<script>

    function openLoginForm(){
        document.body.classList.add("showLoginForm");
    }
    function closeLoginForm(){
        document.body.classList.remove("showLoginForm");
    }

</script>
</html>
