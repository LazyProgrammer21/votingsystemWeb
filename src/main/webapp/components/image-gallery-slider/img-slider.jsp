<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/7/2021
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css">
</head>
<style>


    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    .img-slider{
        position: relative;
        width: 800px;
        height: 500px;
        margin: 10px;
        background: #1D212B;
    }

    .img-slider .slide{
        z-index: 1;
        position: absolute;
        width: 100%;
        clip-path: circle(0% at 0 50%);
    }

    .img-slider .slide.active{
        clip-path: circle(150% at 0 50%);
        transition: 2s;
        transition-property: clip-path;
    }

    .img-slider .slide img{
        z-index: 1;
        width: 100%;
        border-radius: 5px;
    }

    .img-slider .slide .info{
        position: absolute;
        top: 0;
        padding: 15px 30px;
    }

    .img-slider .slide .info h2{
        color: #fff;
        font-size: 45px;
        text-transform: uppercase;
        font-weight: 800;
        letter-spacing: 2px;
    }

    .img-slider .slide .info p{
        color: #fff;
        background: rgba(0, 0, 0, 0.1);
        font-size: 16px;
        width: 60%;
        padding: 10px;
        border-radius: 4px;
    }

    .img-slider .navigation{
        z-index: 2;
        position: absolute;
        display: flex;
        bottom: 30px;
        left: 50%;
        transform: translateX(-50%);
    }

    .img-slider .navigation .btn{
        background: rgba(255, 255, 255, 0.5);
        width: 12px;
        height: 12px;
        margin: 10px;
        border-radius: 50%;
        cursor: pointer;
    }

    .img-slider .navigation .btn.active{
        background: #2696E9;
        box-shadow: 0 0 2px rgba(0, 0, 0, 0.5);
    }

    @media (max-width: 820px){
        .img-slider{
            width: 600px;
            height: 375px;
        }

        .img-slider .slide .info{
            padding: 10px 25px;
        }


        .img-slider .navigation{
            bottom: 25px;
        }

        .img-slider .navigation .btn{
            width: 10px;
            height: 10px;
            margin: 8px;
        }
    }

    @media (max-width: 620px){
        .img-slider{
            width: 400px;
            height: 250px;
        }

        .img-slider .slide .info{
            padding: 10px 20px;
        }

        .img-slider .slide .info h2{
            font-size: 30px;
        }

        .img-slider .slide .info p{
            width: 80%;
            font-size: 13px;
        }

        .img-slider .navigation{
            bottom: 15px;
        }

        .img-slider .navigation .btn{
            width: 8px;
            height: 8px;
            margin: 6px;
        }
    }

    @media (max-width: 420px){
        .img-slider{
            width: 320px;
            height: 200px;
        }

        .img-slider .slide .info{
            padding: 5px 10px;
        }

        .img-slider .slide .info h2{
            font-size: 25px;
        }

        .img-slider .slide .info p{
            width: 90%;
            font-size: 11px;
        }

        .img-slider .navigation{
            bottom: 10px;
        }
    }



</style>
<body>

<div class="img-slider" style="width: auto; height: auto; margin-top: 20px">
    <div class="slide active">
        <img src="gallery1.jpg" alt="gallery9" height="350px">

    </div>
    <div class="slide">
        <img src="gallery2.jpg" alt="gallery1" height="350px">

    </div>
    <div class="slide">
        <img src="gallery3.jpg" alt="gallery2" height="350px">

    </div>
    <div class="slide">
        <img src="gallery6.jpg" alt="gallery3" height="350px">

    </div>
    <div class="slide">
        <img src="gallery5.png" alt="gallery6" height="350px">

    </div>
    <div class="navigation">
        <div class="btn active"></div>
        <div class="btn active"></div>
        <div class="btn active"></div>
        <div class="btn active"></div>
        <div class="btn active"></div>
    </div>
</div>

<script type="text/javascript">
    var slides = document.querySelectorAll('.slide');
    var btns = document.querySelectorAll('.btn');
    let currentSlide = 1;

    // Javascript for image slider manual navigation
    var manualNav = function(manual){
        slides.forEach((slide) => {
            slide.classList.remove('active');

            btns.forEach((btn) => {
                btn.classList.remove('active');
            });
        });

        slides[manual].classList.add('active');
        btns[manual].classList.add('active');
    }

    btns.forEach((btn, i) => {
        btn.addEventListener("click", () => {
            manualNav(i);
            currentSlide = i;
        });
    });

    // Javascript for image slider autoplay navigation
    var repeat = function(activeClass){
        let active = document.getElementsByClassName('active');
        let i = 1;

        var repeater = () => {
            setTimeout(function(){
                [...active].forEach((activeSlide) => {
                    activeSlide.classList.remove('active');
                });

                slides[i].classList.add('active');
                btns[i].classList.add('active');
                i++;

                if(slides.length == i){
                    i = 0;
                }
                if(i >= slides.length){
                    return;
                }
                repeater();
            }, 10000);
        }
        repeater();
    }
    repeat();
</script>

</body>
</html>
