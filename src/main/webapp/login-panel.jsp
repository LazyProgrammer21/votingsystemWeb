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
    }




</style>

<div class="container center"  style="height: 420px; width: auto; margin-top: 60px; margin-left: 90px; background-color: #ffffff">
    <h3>
        <label style="margin-top: 20px; margin-left: 40px">Login To Vote >>></label>
    </h3>
    <form class="login_form" action="ServletLogin" method="post" name="form">
        <div class="font">Voter ID</div>
        <input autocomplete="off" type="number" name="voterID">
        <div class="font font2">Phone Number(+977)</div>
        <input type="number" name="phonenumber"><br>
        <a href="registration-pannel.jsp">Click Here to Register</a>

        <button type="submit" style="margin-top: 0px">Login</button>
    </form>
</div>
