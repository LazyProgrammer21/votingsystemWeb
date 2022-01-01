<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/7/2021
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


    <style>
        *{
            padding: 0;
            margin: 0;
        }

        .container{
            position: relative;
            margin-top: 100px;
            float: left;
            width: 450px;
            height: auto;
            background: #dedede;
            border-radius: 5px;
        }
        .label{
            padding: 20px 130px;
            font-size: 35px;
            font-weight: bold;
            color: #130f40;
        }
        .login_form{
            padding: 20px 40px;
        }
        .login_form .font{
            font-size: 18px;
            color: #130f40;
            margin: 5px 0;
        }
        .login_form input{
            height: 40px;
            width: 350px;
            padding: 0 5px;
            font-size: 18px;
            outline: none;
            border: 1px solid silver;
        }
        .login_form .font2{
            margin-top: 30px;
        }
        .login_form button{
            margin: 45px 0 30px 0;
            height: 45px;
            width: 365px;
            font-size: 20px;
            color: white;
            outline: none;
            cursor: pointer;
            font-weight: bold;
            background: #1A237E;
            border-radius: 3px;
            border: 1px solid #3949AB;
            transition: .5s;
        }
        .login_form button:hover{
            background: #151c6a;
        }

    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins',sans-serif;
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

<div class="container center"  style="height: 420px; width: auto; margin-top: 60px; margin-left: 90px; background-color: #ffffff">
    <h3>
        <label style="margin-top: 20px; margin-left: 40px">Login To Vote >>></label>
    </h3>
    <form class="login_form" action="#" method="post" name="form" onsubmit="return validated()">
        <div class="font">Voter ID</div>
        <input autocomplete="off" type="number" name="voterID">
        <div class="font font2">Phone Number(+977)</div>
        <input type="number" name="phonenumber"><br>
        <a href="#">Get OTP code</a>&nbsp;
        <a href="#" onclick="openLoginForm()" >Click Here to Register</a>

        <button type="submit" style="margin-top: 0px">Login</button>
    </form>
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
<script>

    function openLoginForm(){
        document.body.classList.add("showLoginForm");
    }
    function closeLoginForm(){
        document.body.classList.remove("showLoginForm");
    }

</script>

