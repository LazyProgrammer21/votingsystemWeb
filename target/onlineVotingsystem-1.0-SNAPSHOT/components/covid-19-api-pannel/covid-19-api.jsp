<%--
  Created by IntelliJ IDEA.
  User: hunte
  Date: 12/7/2021
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./resources/css/style.css" />


<main>
    <h1>COVID-19 DATA</h1>
    <div class="stats" >
        <div class="latest-report">
            <div class="country">
                <div class="name">Loading...</div>
                <div class="change-country">change</div>
                <div class="search-country hide">
                    <div class="search-box">
                        <input
                                type="text"
                                id="search-input"
                                placeholder="Search Country..."
                        />
                        <img class="close" src="./resources/img/close.svg" alt="" />
                    </div>
                    <div class="country-list"></div>
                </div>
            </div>
            <div class="total-cases">
                <div class="title">Total Cases</div>
                <div class="value">0</div>
                <div class="new-value">+0</div>
            </div>
            <div class="recovered">
                <div class="title">Recovered</div>
                <div class="value">0</div>
                <div class="new-value">+0</div>
            </div>
            <div class="deaths">
                <div class="title">Deaths</div>
                <div class="value">0</div>
                <div class="new-value">+0</div>
            </div>
        </div>
        <div class="chart">
            <canvas id="axes_line_chart"></canvas>
        </div>
    </div>
</main>


<script
        src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"
        integrity="sha256-R4pqcOYV8lt7snxMQO/HSbVCFRPMdrhAFMH+vr9giYI="
        crossorigin="anonymous"
></script>
<script src="resources/js/countries.js"></script>
<script src="resources/js/app.js"></script>

